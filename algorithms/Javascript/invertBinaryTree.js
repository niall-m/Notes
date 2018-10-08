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
