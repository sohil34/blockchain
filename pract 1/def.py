import hashlib
import json
import time

class Block:

    def __init__(self, previous_hash, transactions):
        self.previous_hash = previous_hash
        self.transactions = transactions
        #self.timestamp = int(time.time())
        self.hash = self.generate_hash()

    def generate_hash(self):
        """Generates the hash of the block."""
        block_data = json.dumps(self.__dict__, sort_keys=True).encode("utf-8")
        return hashlib.sha256(block_data).hexdigest()

    def __repr__(self):
        return f"<Block previous_hash={self.previous_hash} transactions={self.transactions} hash={self.hash}>"

def create_genesis_block():
    """Creates the genesis block."""
    transactions = []
    return Block(None, transactions)

def main():
    genesis_block = create_genesis_block()
    print(genesis_block)
    #Create a mining function
def mine_block(previous_hash, transactions):
    """Mines a block."""
    block = Block(previous_hash, transactions)
    for i in range(100000):
        block.hash = block.generate_hash()
        if block.hash.startswith("0000"):
            break
    return block

def main():
    genesis_block = create_genesis_block()
    mined_block = mine_block(genesis_block.hash, [])
    print(mined_block)


def main():
    genesis_block = create_genesis_block()
    mined_block = mine_block(genesis_block.hash, [])
    print(mined_block)

#Add blocks to the miner and dump the blockchain

def mine_block(previous_hash, transactions):
    """Mines a block."""
    block = Block(previous_hash, transactions)
    for i in range(100000):
        block.hash = block.generate_hash()
        if block.hash.startswith("0000"):
            break
    return block

def add_block(blockchain, block):
    """Adds a block to the blockchain."""
    blockchain.append(block)

def dump_blockchain(blockchain):
    """Dumps the blockchain to the console."""
    for block in blockchain:
        print(block)

def main():
    blockchain = [create_genesis_block()]
    block1 = mine_block(blockchain[-1].hash, [])
    add_block(blockchain, block1)
    block2 = mine_block(block1.hash, [])
    add_block(blockchain, block2)
    dump_blockchain(blockchain)

if __name__ == "__main__":
    main()