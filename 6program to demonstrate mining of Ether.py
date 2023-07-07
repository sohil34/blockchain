import hashlib
import time

def mine(block_number, transactions, previous_hash, difficulty):
    prefix = '0' * difficulty
    nonce = 0
    while True:
        data = str(block_number) + transactions + previous_hash + str(nonce)
        hash_result = hashlib.sha256(data.encode()).hexdigest()
        if hash_result.startswith(prefix):
            return nonce, hash_result
        nonce += 1

# Example usage
block_number = 1
transactions = "Transaction data goes here"
previous_hash = "Previous hash goes here"
difficulty = 4  # Number of leading zeroes required in the hash

start_time = time.time()
nonce, block_hash = mine(block_number, transactions, previous_hash, difficulty)
end_time = time.time()

print(f"Block mined successfully!\nBlock Hash: {block_hash}\nNonce: {nonce}")
print(f"Time taken: {end_time - start_time} seconds")