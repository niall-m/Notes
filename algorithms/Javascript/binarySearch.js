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
