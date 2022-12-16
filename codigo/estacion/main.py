import socket
import time

msgFromClient       = "Hello UDP Server"
bytesToSend         = str.encode(msgFromClient)
serverAddressPort   = ("192.168.2.108", 20001)

bufferSize          = 1024
 
# Create a UDP socket at client side
UDPClientSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)

# Send to server using created UDP socket
print("send")
UDPClientSocket.sendto(bytesToSend, serverAddressPort)
print("receive??")
msgFromServer = UDPClientSocket.recvfrom(bufferSize)
msg = "Message from Server {}".format(msgFromServer[0])

print("send2")
UDPClientSocket.sendto(bytesToSend, serverAddressPort)
print("receive??")
msgFromServer = UDPClientSocket.recvfrom(bufferSize)
msg = "Message from Server {}".format(msgFromServer[0])
print(msg)

timer0 = time.time()

while True:
    msgFromServer = UDPClientSocket.recvfrom(bufferSize)
    msg = "Message from Server {}".format(msgFromServer[0])
    print(msg)
    if time.time() > timer0 + 10:
        UDPClientSocket.sendto(bytesToSend, serverAddressPort)
        print("sent ping")
        timer0 = time.time()