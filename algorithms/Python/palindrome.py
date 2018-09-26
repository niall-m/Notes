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

# O(n) Time | O(n) Space
# Recursive
def isPalindrome3(string, i = 0):
    j = len(string) - 1 - i
    return True if i >= j else string[i] == string[j] and isPalindrome3(string, i + 1)

# O(n) Time | O(1) Space
# Iterative
def isPalindrome4(string):
    startIdx = 0
    endIdx = len(string) - 1
    while startIdx < endIdx:
        if string[startIdx] != string[endIdx]:
            return False
        startIdx += 1
        endIdx -= 1
    return True
