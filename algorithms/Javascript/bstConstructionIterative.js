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

  // Average: O(Log(n)) Time | O(1) Space
  // Worst: O(n) Time | O(1) Space
  contains(value) {
    let currentNode = this;
    while (currentNode !== null) {
      if (value < currentNode.value) { // explore left
        currentNode = currentNode.left;
      } else if (value > currentNode.value) { // explore right
        currentNode = currentNode.right;
      } else { // we found the value
        return true;
      }
    }
    return false;
  }

  // Average: O(Log(n)) Time | O(1) Space
  // Worst: O(n) Time | O(1) Space
  remove(value, parentNode = null) { // optional parentNode, root has no parent
    // when removing a node, must reassign child of parent of node being removed
    let currentNode = this;
    while (currentNode !== null) {
      if (value < currentNode.value) { // search left sub-tree
        parentNode = currentNode; // track parent as we traverse tree
        currentNode = currentNode.left;
      } else if (value > currentNode.value) { // search right sub-tree
        parentNode = currentNode;
        currentNode = currentNode.right;
      } else { // we found target node
        if (currentNode.left !== null && currentNode.right !== null) { // edgecase: has 2 child nodes
          currentNode.value = currentNode.right.findMinValue(); // replace currentNode.value with smallest value of right sub-tree
          currentNode.right.remove(currentNode.value, currentNode); // remove that smallest value from right sub-tree
        // note: remaining edgecases have targets with 1 or 0 child nodes
        } else if (parentNode === null) { // edgecase: removing root node
          if (currentNode.left !== null) { // if root only has left child
            currentNode.value = currentNode.left.value; // reassign root with child's values, in specific order
            currentNode.right = currentNode.left.right;
            currentNode.left = currentNode.left.left;
          } else if (currentNode.right !== null) { // if root only has right child
            currentNode.value = currentNode.right.value; // same logic
            currentNode.left = currentNode.right.left;
            currentNode.right = currentNode.right.right;
          } else { // edgecase: removing root node with no children...
            currentNode.value = null;
          }
        } else if (parentNode.left === currentNode) { // currentNode is a left child
          parentNode.left = currentNode.left !== null ? currentNode.left: currentNode.right;
          // reassign parent's left child to proper child of currentNode; left has priority over right to maintain BST
        } else if (parentNode.right === currentNode) { // currentNode is a right child
          parentNode.right = currentNode.left !== null ? currentNode.left : currentNode.right;
          // reassign parent's right child with same logic, currentNode gets garbage collected
          // note: if there is no right child, it will assign null from constructor
        }
        break;
      }
    }
    return this; // allows chaining of .remove calls
  }

  findMinValue() { // is called on right sub-tree
    // traverse tree to the left until we reach a node with no left value, i.e. leaf
    let currentNode = this;
    while (currentNode.left !== null) {
      currentNode = currentNode.left;
    } 
    return currentNode.value;
  }
}

// exports.BST = BST;