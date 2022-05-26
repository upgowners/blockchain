from bitcoinlib.wallets import Wallet
w = Wallet.create('Wallet2')
key1 = w.get_key()
print(key1.address)
w.scan()
print(w.info())
