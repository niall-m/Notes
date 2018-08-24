class BST {
  constructor(value) {
    this.value = value;
    this.left = null;
    this.right = null;
  }

  // Average: O(Log(n)) Time | O(1) Space
  // Worst: O(n) Time | O(1) Space
  insert(value) {
    let currentNode = this;
    while (true) {
      if (value < currentNode.value) { // explore left sub-tree
        if (currentNode.left === null) { // check if at end of branch
          currentNode.left = new BST(value); // insert and end
          break;
        } else {
          currentNode = currentNode.left; // keep exploring
        }
      } else { // explore right sub-tree
        if (currentNode.right === null) {
          currentNode.right = new BST(value);
          break;
        } else {
          currentNode = currentNode.right;
        }
      }
    }
    return this; // allows chaining of .insert calls
  }
}
