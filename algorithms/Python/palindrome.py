# O(n^2) Time | O(n) Space
def isPalindrome(str):
    reversedStr = ""
    for i in reversed(range(len(str))):
        reversedStr += str[i]
    return str == reversedStr