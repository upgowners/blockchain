import hashlib


def sha256(message):
    return hashlib.sha256(message.encode('ascii')).hexdigest()


def mine(message, difficulty=1):
    assert difficulty >= 1
    # if(difficulty <1):
    #        return
    # '1'*3=> '111'
    prefix = '1' * difficulty
    print("prefix", prefix)
    for i in range(1000):
        digest = sha256(str(hash(message)) + str(i))
        print("testing=>"+digest)
        if digest.startswith(prefix):
            print("after " + str(i) + " iterations found nonce: " + digest)
            return i  # i= nonce value


n = mine("test message", 3)
print(n)
