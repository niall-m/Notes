// non-empty array of integers, return the max sum obtained by summing all adjacent nums in a subarray of input array

// O(n) Time | O(1) Space
function kadanesAlgorithm(array) {
	let maxEndingHere = array[0];
	let maxSoFar = array[0];
	for (let i = 1; i < array.length; i++) {
		let num = array[i];
		maxEndingHere = Math.max(num, maxEndingHere + num);
		maxSoFar = Math.max(maxSoFar, maxEndingHere);
	}
	return maxSoFar;
}
