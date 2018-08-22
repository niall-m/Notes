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

// using indices on a sorted array: O(nlog(n)) time| O(1) space
function sumTwoNumbers(array, targetSum) {
	array.sort((a, b) => a - b);
	let left = 0;
	let right = array.length - 1;
	while (left < right) {
		let potentialMatch = array[left] + array[right];
		if (targetSum === potentialMatch) {
			return [array[left], array[right]];
		} else if (targetSum > potentialMatch) {
			left++;
		} else if (targetSum < potentialMatch) {
			right--;
		}
	}
	return [];
}
