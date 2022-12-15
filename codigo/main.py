from gpsdclient import GPSDClient
from ecomet_i2c_sensors.hdc1080 import hdc1080
from imusensor.MPU9250 import MPU9250

from queue import Queue
import threading
import time
import smbus

# AMBIENT
hdc = hdc1080.HDC1080()
hdc.write_register(register = 'CONF', bits = ['MODE_BOTH','HRES_RES1','TRES_RES1'])
(temp, hmdt) = (0, 0)
# IMU
bus = smbus.SMBus(1)
imu = MPU9250.MPU9250(bus, 0x68)
imu.begin()
# GPS
queue = Queue()
gps = ["n/a", "n/a"]
def gps_thread(queue):
    gps = GPSDClient(host="127.0.0.1")
    for result in gps.dict_stream(convert_datetime=True, filter=["TPV"]):
        lat = result.get("lat", "n/a")
        lon = result.get("lon", "n/a")
        queue.queue.clear()
        queue.put([lat, lon])
x = threading.Thread(target = gps_thread, daemon=True, args=(queue,))
x.start()


while True:
    # AMBIENT
    (temp, hmdt, ret) = hdc.both_measurement()
    # IMU
    imu.readSensor()
    imu.computeOrientation()
    # GPS
    try:
        gps = queue.get_nowait()
    except: 
        pass
    print([gps, [imu.roll, imu.pitch], [temp, hmdt]])
    time.sleep(0.05)

