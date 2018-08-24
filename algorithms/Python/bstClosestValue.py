def bstClosestValue(BST, target):
    return bstClosestValueHelper(BST, target, float("inf"))

# Recursive 
# Average: O(Log(n)) Time | O(Log(n)) Space
# Worst: O(n) Time | O(n) Space
def bstClosestValueHelper(BST, target, closest):
    # when currentNode is a null node,
    if BST is None: # we're at a leaf
        return closest
    # otherwise, compute absolute value of difference between closest and target node
    if abs(target - closest) > abs(target - BST.value):
        closest = BST.value
    # once we've taken care of potential update of closest, compare target value to current nodes value
    # and decide which part of the BST we want to explore
    if target < BST.value: # only need to explore left subBST
        return bstClosestValueHelper(BST.left, target, closest)
    elif target > BST.value:
        return bstClosestValueHelper(BST.right, target, closest)
    else: # we found a value that is equal to target value
        return closest
