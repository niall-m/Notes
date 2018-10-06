# in-order traversal, pre-order traversal, and post-order traversal of a BST
# example input BST
#     1
#    / \
#   2   3
#  / \
# 4   5

# O(n) Time| O(n) Space
# left, root, right
# e.g. 4 2 5 1 3
def inOrderTraversal(tree, array):
    if tree is not None:
        inOrderTraversal(tree.left, array)
        array.append(tree.value)
        inOrderTraversal(tree.right, array)
    return array

# O(n) Time| O(n) Space
# root, left, right
# e.g. 1 2 4 5 3
def preOrderTraversal(tree, array):
    if tree is not None:
        array.append(tree.value)
        inOrderTraversal(tree.left, array)
        inOrderTraversal(tree.right, array)
    return array
