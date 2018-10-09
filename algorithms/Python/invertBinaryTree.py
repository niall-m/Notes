# O(n) Time | O(n) Space
# Iterative
def invertBinaryTree(tree):
    queue = [tree]
    while len(queue):
        currentNode = queue.pop(0)
        if currentNode is None:
            continue
        swapLeaves(currentNode)
        queue.append(currentNode.left)
        queue.append(currentNode.right)

def swapLeaves(tree):
    tree.left, tree.right = tree.right, tree.left
