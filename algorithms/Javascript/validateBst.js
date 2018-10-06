// O(n) TIme | O(d) Space
// Validate if a tree is a BST, Recursive
function validate(tree) {
  return bstHelper(tree, -Infinity, Infinity);
}

function bstHelper(tree, minVal, maxVal) {
  if (tree === null) return true;
  if (tree.value < minVal || tree.value >= maxVal) return false;
  const leftIsValid = bstHelper(tree.left, minVal, tree.value);
  const rightIsValid = bstHelper(tree.right, tree.value, maxVal);
  return leftIsValid && rightIsValid;
}
