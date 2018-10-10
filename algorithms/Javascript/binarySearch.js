// Recursive Binary Search with helper method, left & right pointers
// O(Log(n)) Time | O(Log(n)) Space
function binarySearch(array, target) {
	return recursiveHelper(array, target, 0, array.length - 1);
}

function recursiveHelper(array, target, left, right) {
	if (left > right) return -1;
	const middle = Math.floor((left + right) / 2);
	const potentialMatch = array[middle];
	if (target === potentialMatch) {
		return middle;
	} else if (target < potentialMatch) {
		return recursiveHelper(array, target, left, right - 1);
	} else {
		return recursiveHelper(array, target, left + 1, right);
	}
}

// Recursive in place, without helper method
// O(Log(n)) Time | O(Log(n)) Space
function binarySearch2(array, target) {
  if (array.length === 0) return -1; // base case: if array is empty, target wasn't found
   // grab the middle number to search by; integer, not float
   const middle = Math.floor(array.length / 2);
   const potentialMatch = array[middle];
  if (potentialMatch === target) { // if target is equal to middle element, great success
    return middle;
  } else if (target < potentialMatch) { // if target is smaller than mid, search left side
    const left = array.slice(0, middle);
    return binarySearch2(left, target);
  } else { // target is bigger than middle, search right side
    const right = array.slice(middle + 1);
    const subproblem =  binarySearch2(right, target);
    // if subproblem doesn't find target, it returns -1
    // else, we must return the result of (subproblem + (mid + 1)) in order to
    // return the index of the full array as it bubbles up the call stack
    // due to the subarrays from Array.slice()
    return subproblem === -1 ? -1 : subproblem + (middle + 1);
  }
}

// Iterative Binary Search
// O(Log(n)) Time | O(1) Space
function binarySearch3(array, target) {
	let left = 0;
	let right = array.length - 1;
	while (left <= right) {
		const middle = Math.floor((left + right) / 2);
		const potentialMatch = array[middle];
		if (target === potentialMatch) {
			return middle;
		} else if (target < potentialMatch) {
			right = middle - 1; // reassigns corresponding pointer from mid
		} else { // cuts out half from consideration
			left = middle + 1; // creating logarithmic time complexity
		}
	}
	return -1;
}