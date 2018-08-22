// using nested loops: O(n^2) time | O(1) space
function twoNumberSum(array, targetSum) {
	for (let i = 0; i < array.length - 1; i++) {
		let firstNum = array[i];
		for (let j = i + 1; j < array.length; j++) {
			let secondNum = array[j];
			if (firstNum + secondNum === targetSum) {
				return [firstNum, secondNum].sort((a, b) => a - b);
			}
		}
	}
	return [];
}

// using a hash: O(n) time | O(n) space
function twoSumNumbers(array, targetSum) {
	let nums = {};
	for (let i = 0; i < array.length; i++) {
		let currentNum = array[i];
		let potentialMatch = targetSum - currentNum;
		if (nums[potentialMatch]) {
			return [potentialMatch, currentNum].sort((a, b) => a - b);
		} else {
			nums[currentNum] = true;
		}
	}
	return [];
}
