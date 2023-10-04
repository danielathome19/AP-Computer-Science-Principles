msg = input("Enter a message: ")
enc = ""
for let in msg:
  enc += str(ord(let)) + " "
print(enc)
