from gpsdclient import GPSDClient
from ecomet_i2c_sensors.hdc1080 import hdc1080
from imusensor.MPU9250 import MPU9250

from queue import Queue
import threading
import time

hdc = hdc1080.HDC1080()
queue = Queue()

def gps_thread(queue):
    gps = GPSDClient(host="127.0.0.1")
    for result in gps.dict_stream(convert_datetime=True, filter=["TPV"]):
        lat = result.get("lat", "n/a")
        lon = result.get("lon", "n/a")
        queue.put([lat, lon])
x = threading.Thread(target = gps_thread, daemon=True, args=(queue,))
x.start()

gps = ["n/a", "n/a"]
while True:
    try:
        gps = queue.get_nowait()
    except: 
        pass
    print(gps)
    time.sleep(0.1)

