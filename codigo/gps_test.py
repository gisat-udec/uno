from gpsdclient import GPSDClient

# get your data as json strings:
with GPSDClient(host="127.0.0.1") as client:
    for result in client.dict_stream(convert_datetime=True, filter=["TPV"]):
        print("Latitude: %s" % result.get("lat", "n/a"))
        print("Longitude: %s" % result.get("lon", "n/a"))
    