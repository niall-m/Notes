# O(n) Time | O(d) Space
# Validate if a tree is a BST, Recursive
def validate(tree):
    return validateHelper(tree, float("-inf"), float("inf"))

def validateHelper(tree, minVal, maxVal):
    if tree is None:
        return True
    if tree.value < minVal or tree.value >= maxVal:
        return False
    leftIsValid = validateHelper(tree.left, minVal, tree.value)
    rightIsValid = validateHelper(tree.right, tree.value, maxVal)
    return leftIsValid and rightIsValid
    