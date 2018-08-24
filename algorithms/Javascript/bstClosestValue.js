// Iterative
// Average: O(Log(n)) Time | O(1) Space
// Worst: O(n) Time | O(1) Space
function bstClosestValue(bst, target, closest = Infinity) {
  let currentNode = bst;
  while (currentNode !== null) { // while we're not at a leaf (at bottom of bst)
    if (Math.abs(target - closest) > Math.abs(target - currentNode.value)) {
      // compute absolute difference between closest and target (i.e. current closest) 
      // and abs diff between target and currentNode.value
      // if current.value is smaller then it's closer to target and replaces closest
      closest = currentNode.value;
    }
    // once we've taken care of potential update of closest, 
    // compare target value to current nodes value and
    // decide which part of the BST we want to explore
    if (target < currentNode.value) {
      currentNode = currentNode.left; // explore left
    } else if (target > currentNode.value) {
      currentNode = currentNode.right; // explore right
    } else { // they're equal
      break;
    }
  }
  return closest;
}

// Recursive
// Average: O(Log(n)) Time | O(Log(n)) Space
// Worst: O(n) Time | O(n) Space
function bstClosestValue2(bst, target) {
  return bstHelper(bst, target, Infinity);
}

function bstHelper(bst, target, closest) {
  if (bst === null) return closest;
  if (Math.abs(target - closest) > Math.abs(target - bst.value)) {
    closest = bst.value;
  }
  if (target < bst.value) {
    return bstHelper(bst.left, target, closest);
  } else if (target > bst.value) {
    return bstHelper(bst.right, target, closest);
  } else {
    return closest;
  }
}

// exports.bstClosestValue = bstClosestValue;