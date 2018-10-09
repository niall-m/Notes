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

# O(n) Time | O(d) Space
# Recursive
def invertBinaryTree2(tree):
    if tree is None:
        return
    tree.left, tree.right = tree.right, tree.left
    invertBinaryTree2(tree.left)
    invertBinaryTree2(tree.right)
