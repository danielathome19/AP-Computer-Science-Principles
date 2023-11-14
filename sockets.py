import socket

# AF_INET is ipv4; SOCK_STREAM is TCP, SOCK_DGRAM is UDP
tcp = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# Allow socket to be reused
tcp.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
host = socket.gethostname()  # Get local device IP
port = 9999

def do_server():
  tcp.bind((host, port))
  tcp.listen(5)  # Listen to 5 connections
  print("Listening...")
  while True:
    csocket, addr = tcp.accept()
    print(f"Client connected: {addr}")
    msg = "Thanks for connecting!".encode('ascii')
    csocket.send(msg)
    csocket.close()

def do_client():
  tcp.connect((host, port))
  msg = tcp.recv(1024)  # Receive up to 1024 bytes
  tcp.close()
  print(f"Received server message: {msg.decode('ascii')}")


choice = input("Are you client or server: ")
if choice in "client":
  do_client()
else:
  do_server()
