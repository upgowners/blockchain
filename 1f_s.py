import hashlib
import random
import string
import json
import binascii
import numpy as np
import pandas as pd
import pylab as pl
import logging
import datetime
import collections
from Crypto.PublicKey import RSA
from Crypto import Random
from Crypto.Cipher import PKCS1_v1_5
from collections import OrderedDict
import Crypto
import Crypto.Random
from Crypto.Hash import SHA
from Crypto.Signature import PKCS1_v1_5


class Client:
    def __init__(self):
        random = Random.new().read
        self._private_key = RSA.generate(1024, random)
        self._public_key = self._private_key.publickey()
        self._signer = PKCS1_v1_5.new(self._private_key)

    @property
    def identity(self):
        return binascii.hexlify(self._public_key.exportKey(format='DER')).decode('ascii')


class Transaction:
    def __init__(self, sender, recipient, value):
        self.sender = sender
        self.recipient = recipient
        self.value = value
        self.time = datetime.datetime.now()

    def to_dict(self):
        if self.sender == "Genesis":
            identity = "Genesis"
        else:
            identity = self.sender.identity
        return collections.OrderedDict({
            'sender': identity,
            'recipient': self.recipient,
            'value': self.value,
            'time': self.time})

    def sign_transaction(self):
        private_key = self.sender._private_key
        signer = PKCS1_v1_5.new(private_key)
        h = SHA.new(str(self.to_dict()).encode('utf8'))
        return binascii.hexlify(signer.sign(h)).decode('ascii')


def display_transaction(transaction):
    # for transaction in transactions:
    dict = transaction.to_dict()
    print("sender: " + dict['sender'])
    print('-----')
    print("recipient: " + dict['recipient'])
    print('-----')
    print("value: " + str(dict['value']))
    print('-----')
    print("time: " + str(dict['time']))
    print('-----')


def dump_blockchain(self):
    print("Number of blocks in the chain: " + str(len(self)))
    for x in range(len(TPCoins)):
        block_temp = TPCoins[x]
        print("block # " + str(x))
        for transaction in block_temp.verified_transactions:
            display_transaction(transaction)
            print('--------------')
        print('=====================================')


class Block:
    def __init__(self):
        self.verified_transactions = []
        self.previous_block_hash = ""
        self.Nonce = ""


def sha256(message):
    return hashlib.sha256(message.encode('ascii')).hexdigest()


def mine(message, difficulty=1):
    assert difficulty >= 1
    # if(difficulty <1):
    #        return
    # '1'*3=> '111'
    prefix = '1' * difficulty
    for i in range(1000):
        digest = sha256(str(hash(message)) + str(i))
        if digest.startswith(prefix):
            return i  # i= nonce value


Sahil = Client()
Rahul = Client()
Aniket = Client()
t0 = Transaction(
    "Genesis",
    Sahil.identity,
    500.0
)
t1 = Transaction(
    Rahul,
    Sahil.identity,
    40.0
)
t2 = Transaction(
    Rahul,
    Sahil.identity,
    70.0
)
t3 = Transaction(
    Aniket,
    Rahul.identity,
    700.0
)
# blockchain
TPCoins = []
block0 = Block()
block0.previous_block_hash = None
Nonce = None
block0.verified_transactions.append(t0)
digest = hash(block0)
last_block_hash = digest  # last_block_hash it is hash of block0
TPCoins.append(block0)
block1 = Block()
block1.previous_block_hash = last_block_hash
block1.verified_transactions.append(t1)
block1.verified_transactions.append(t2)
block1.Nonce = mine(block1, 2)
digest = hash(block1)
last_block_hash = digest
TPCoins.append(block1)
block2 = Block()
block2.previous_block_hash = last_block_hash
block2.verified_transactions.append(t3)
Nonce = mine(block2, 2)
block2.Nonce = mine(block2, 2)
digest = hash(block2)
last_block_hash = digest
TPCoins.append(block2)
dump_blockchain(TPCoins)
