// O(n) Time | O(n) Space
// Iterative
function invertBinaryTree(tree) {
  const queue = [tree];
  while (queue.length) {
    const currentNode = queue.shift();
    if (currentNode === null) continue;
    const left = currentNode.left;
    currentNode.left = currentNode.right;
    currentNode.right = left;
    queue.push(currentNode.left);
    queue.push(currentNode.right);
  }
}

// O(n) Time | O(d) Space
// Recursive
function invertBinaryTree2(tree) {
  if (tree === null) return;
  swapLeaves(tree);
  invertBinaryTree2(tree.left);
  invertBinaryTree2(tree.right);
}

function swapLeaves(currentNode) {
  const left = currentNode.left;
  currentNode.left = currentNode.right;
  currentNode.right = left;
}