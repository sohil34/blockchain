from Crypto.PublicKey import RSA

class Client:
    def __init__(self):
        self.private_key = None
        self.public_key = None

    def generate_keys(self):
        key = RSA.generate(2048)
        self.private_key = key.export_key()
        self.public_key = key.publickey().export_key()

# Test the Client class
client = Client()
client.generate_keys()
print("Private Key:")
print(client.private_key.decode())
print("\nPublic Key:")
print(client.public_key.decode())