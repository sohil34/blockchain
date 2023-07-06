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

def create_transactions():
    """Creates multiple transactions."""
    transactions = []
    transactions.append(Transaction("Alice", "Bob", 100))
    transactions.append(Transaction("Bob", "Carol", 50))
    transactions.append(Transaction("Carol", "Alice", 25))
    return transactions

if __name__ == "__main__":
    transactions = create_transactions()
    for transaction in transactions:
        print(transaction)