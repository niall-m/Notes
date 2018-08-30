class Node {
  constructor(name) {
    this.name = name;
    this.children = [];
  }

  addChild(name) {
    this.children.push(new Node(name));
    return this;
  }

  // O(v + e) Time | O(v) Space
  depthFirstSearch(array) { // takes empty result-array as argument
    array.push(this.name); // add current node node to array
    for (let child of this.children) { // loops through and assigns variable to each child from this.children array
      child.depthFirstSearch(array); // recursively call dfs on children, adding each to call stack
    } // reaches leaf of tree before bubbling up call stack
    return array; // returns the first dfs call
  }
}
