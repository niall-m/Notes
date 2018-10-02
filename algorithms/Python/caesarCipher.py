# O(n) Time | O(n) Space
def caesarCipher(string, key):
    cipheredChars = []
    alphabet = list("abcdefghijklmnopqrstuvwxyz")
    for letter in string:
        newLetter = (alphabet.index(letter) + key) % len(alphabet)
        cipheredChars.append(alphabet[newLetter])
    return "".join(cipheredChars)
