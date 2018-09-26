# O(n^2) Time | O(n) Space
def isPalindrome(string):
    reversedStr = ""
    for i in reversed(range(len(string))):
        reversedStr += string[i]
    return string == reversedStr

# O(n) Time | O(n) Space
def isPalindrome2(string):
    reversedChars = []
    for i in reversed(range(len(string))):
        reversedChars.append(string[i])
    return string == "".join(reversedChars)
 