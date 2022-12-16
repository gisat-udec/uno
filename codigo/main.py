from gpsdclient import GPSDClient
from ecomet_i2c_sensors.hdc1080 import hdc1080
from imusensor.MPU9250 import MPU9250

from queue import Queue
import select
import socket
import threading
import time
import smbus

start = time.time()

## Servidor
clients = []
def socket_loop(ping_queue, state_queue):
    server = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
    server.bind(("192.168.2.108", 20001))
    while True:
        # Pings
        server.setblocking(0)
        ready = select.select([server], [], [], 0.05)
        if ready[0]:
            res = server.recvfrom(1024)
            address = res[1]
            server.sendto(str.encode("1"), address)
            ping_queue.put(address)
            print("Ping cliente: ", address)
        # Enviar datos a clientes
        try:
            state = state_queue.get_nowait()
            clients = state[0]
            data = state[1]
            msg = ""
            for item in data:
                if item == "n/a":
                    msg = msg + "0"
                else:
                    msg = msg + f"{item:.4f}"
                msg = msg + ":"
            for client in clients:
                address = client[0]
                server.sendto(str.encode(msg), address)
        except: 
            pass


ping_queue = Queue()
state_queue = Queue()
socket_thread = threading.Thread(target = socket_loop, daemon=True, args=(ping_queue, state_queue,))
socket_thread.start()

## Sensores
# Ambiente
hdc = hdc1080.HDC1080()
hdc.write_register(register = 'CONF', bits = ['MODE_BOTH', 'HRES_RES1', 'TRES_RES1'])
(temp, hmdt) = (0, 0)
# IMU
bus = smbus.SMBus(1)
imu = MPU9250.MPU9250(bus, 0x68)
imu.begin()
# GPS
gps = ["n/a", "n/a"]
def gps_loop(queue):
    gps = GPSDClient(host="127.0.0.1")
    for result in gps.dict_stream(convert_datetime=True, filter=["TPV"]):
        lat = result.get("lat", "n/a")
        lon = result.get("lon", "n/a")
        queue.queue.clear()
        queue.put([lat, lon])
gps_queue = Queue()
gps_thread = threading.Thread(target = gps_loop, daemon=True, args=(gps_queue,))
gps_thread.start()

while True:
    now = time.time()

    ## Sensores
    (temp, hmdt, ret) = hdc.both_measurement()
    imu.readSensor()
    imu.computeOrientation()
    try:
        gps = gps_queue.get_nowait()
    except: 
        pass

    ## Servidor
    # Agregar nuevos clientes a lista
    try:
        address = ping_queue.get_nowait()
        found = False
        for client in clients:
            if address == client[0]:
                client[1] = now
                found = True
                break
        if not found:
            clients.append([address, now])
    except:
        pass
    # Eliminar clientes que no han enviado ping
    clients = list(filter(lambda client: client[1] + 30 > now, clients))
    # Enviar datos a clientes
    state_queue.queue.clear()
    state_queue.put([clients, [now - start, gps[0], gps[1], imu.roll, imu.pitch, temp, hmdt]])

    #print(clients)
    time.sleep(0.1)
