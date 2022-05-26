def gcd(a, b):
    while b != 0:
        a, b = b, a % b
    return a


def multiplicative_inverse(e, phi):
    for i in range(phi):
        if((e*i) % phi == 1):
            return i


def coprimes(a):
    l = []
    for x in range(2, a):
        if gcd(a, x) == 1 and multiplicative_inverse(x, phi) != None:
            l.append(x)
    for x in l:
        if x == multiplicative_inverse(x, phi):
            l.remove(x)
    return l


def generate_keypair(p, q, e, phi):
 # Use Extended Euclid's Algorithm to generate the private key
    d = multiplicative_inverse(e, phi)
    print("d=", d)
    # Public key is (e, n) and private key is (d, n)
    return ((e, n), (d, n))


def encrypt(pk, plaintext):
    # Unpack the key into it's components
    key, n = pk
    # Convert each letter in the plaintext to numbers based on the character using a^b mod m
    cipher = [(ord(char) ** key) % n for char in plaintext]
    # Return the array of bytes
    return cipher


def decrypt(sk, ciphertext):
    # Unpack the key into its components
    key, n = sk
    # Generate the plaintext based on the ciphertext and key using a^b mod m
    plain = [chr((char ** key) % n) for char in ciphertext]
    # Return the array of bytes as a string
    return ''.join(plain)


if __name__ == '__main__':
    print("RSA Encrypter/ Decrypter")
    p = int(input("Enter a prime number (17, 19, 23, etc): "))
    q = int(input("Enter another prime number (Not one you entered above): "))
    n = p * q
    print("N=", n)
    phi = (p-1) * (q-1)
    print("phi_n=", phi)
    print("List of e (coprimes) :\n")
    print(str(coprimes(phi)) + "\n")
    print("Generating your public/private keypairs now . . .")
    e = int(input("Enter e: "))
    public, private = generate_keypair(p, q, e, phi)
    print("Your public key is ", public, " and your private key is ", private)
    message = str(input("Enter a message to encrypt with public key: "))
    encrypted_msg = encrypt(public, message)
    print("Your encrypted message is: ")
    print(''.join(map(lambda x: str(x), encrypted_msg)))
    print("Decrypting message with private key . . .")
    print("Your message is:")
    print(decrypt(private, encrypted_msg))
