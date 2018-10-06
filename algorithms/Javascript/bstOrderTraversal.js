// in-order traversal, pre-order traversal, and post-order traversal of a BST
// Traverse a BST and add its nodes to an array.

// example BST
//     1
//    / \
//   2   3
//  / \
// 4   5

// O(n) Time| O(n) Space
// left, root, right
// e.g. 4 2 5 1 3
function inOrderTraversal(tree, array) {
  if (tree !== null) {
    inOrderTraversal(tree.left, array);
    array.push(tree.value);
    inOrderTraversal(tree.right, array);
  }
  return array;
}

// O(n) Time| O(n) Space
// root, left, right
// e.g. 1 2 4 5 3
function preOrderTraversal(tree, array) {
  if (tree !== null) {
    array.push(tree.value);
    preOrderTraversal(tree.left, array);
    preOrderTraversal(tree.right, array);
  }
  return array;
}