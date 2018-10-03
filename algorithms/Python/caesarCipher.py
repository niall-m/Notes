# O(n) Time | O(n) Space
def caesarCipher(string, key):
    cipheredChars = []
    alphabet = list("abcdefghijklmnopqrstuvwxyz")
    for letter in string:
        newLetter = (alphabet.index(letter) + key) % len(alphabet)
        cipheredChars.append(alphabet[newLetter])
    return "".join(cipheredChars)

# O(n) Time | O(n) Space
def caesarCipher2(string, key):
    cipheredChars = []
    newKey = key % 26
    for letter in string:
        charIdx = ord(letter) - ord("a")
        newCharIdx = (charIdx + key) % 26
        newChar = chr(ord("a") + newCharIdx)
        cipheredChars.append(newChar)
    return "".join(cipheredChars)