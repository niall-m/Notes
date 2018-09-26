# O(n^2) Time | O(n) Space
def isPalindrome(string):
    reversedStr = ""
    for i in reversed(range(len(string))):
        reversedStr += string[i]
    return string == reversedStr
