import hashlib
import json

class Transaction:

    def __init__(self, sender, recipient, amount):
        self.sender = sender
        self.recipient = recipient
        self.amount = amount
        #self.timestamp = int(time.time())
        self.hash = self.generate_hash()

    def generate_hash(self):
        """Generates the hash of the transaction."""
        transaction_data = json.dumps(self.__dict__, sort_keys=True).encode("utf-8")
        return hashlib.sha256(transaction_data).hexdigest()

    def __repr__(self):
        return f"<Transaction sender={self.sender} recipient={self.recipient} amount={self.amount} hash={self.hash}>"

if __name__ == "__main__":
    sender = "Alice"
    recipient = "Bob"
    amount = 100
    transaction = Transaction(sender, recipient, amount)
    print(transaction)