class BST {
  constructor(value) {
    this.value = value;
    this.left = null;
    this.right = null;
  }

  // Average: O(Log(n)) Time | O(Log(n)) Space
  // Worst: O(n) Time | O(n) Space
  insert(value) {
    if (value < this.value) {
      if (this.left === null) { // reached leaf
        this.left = new BST(value); // insert
      } else {
        this.left.insert(value); // search left
      }
    } else {
      if (this.right === null) { // reached leaf
        this.right = new BST(value); // insert
      } else {
        this.right.insert(value); // search right
      }
    }
    return this; // allows chaining calls
  }
  
  // Average: O(Log(n)) Time | O(Log(n)) Space
  // Worst: O(n) Time | O(n) Space
  contains(value) {
    if (value < this.value) {
      if (this.left === null) {
        return false;
      } else {
        return this.left.contains(value);
      }
    } else if (value > this.value) {
      if (this.right === null) {
        return false;
      } else {
        return this.right.contains(value);
      }
    } else {
      return true;
    }
  }

  // Average: O(Log(n)) Time | O(Log(n)) Space
  // Worst: O(n) Time | O(n) Space
  remove(value, parent = null) {
    if (value < this.value) {
      if (this.left !== null) { // search left
        this.left.remove(value, this);
      }
    } else if (value > this.value) {
      if (this.right !== null) { // search right
        this.right.remove(value, this);
      }
    } else { // found target
      if (this.left !== null && this.right !== null) { // if it has 2 children
        this.value = this.right.findMinValue();
        this.right.remove(this.value, this);
      } else if (parent === null) { // if its the root of bst
        if (this.left !== null) { // by default we replace target with its left child
          this.value = this.left.value; // as it's smaller than the right child
          this.right = this.left.right; // to preserve the properties of a bst
          this.left = this.left.left;
        } else if (this.right !== null) {
          this.value = this.right.value;
          this.left = this.right.left;
          this.right = this.right.right; // replaces this last so others before aren't overwritten before assignment
        } else {
          this.value = null; // root with no children
        }
      } else if (parent.left === this) { // has 0 or 1 child, is not the root
        parent.left = this.left !== null ? this.left : this.right; // defaults to left, then right (or null)
      } else if (parent.right === this) { // same logic
        parent.right = this.left !== null ? this.left : this.right;
      }
    }
    return this;
  }

  findMinValue() {
    if (this.left === null) {
      return this.value;
    } else { // digs left until it bottoms out at tree leaf
      return this.left.findMinValue();
    }
  }
}

// exports.BST = BST;