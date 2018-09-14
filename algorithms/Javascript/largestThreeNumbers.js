// O(n) Time | O(1) Space
function findLargestThreeNumbers(array) {
	let largest3Nums = [null, null, null];
	for (const num of array) update(largest3Nums, num);
	return largest3Nums;
}

function update(largest3Nums, num) {
	if (largest3Nums[2] === null || num > largest3Nums[2]) {
		shiftUpdate(largest3Nums, num, 2);
	} else if (largest3Nums[1] === null || num > largest3Nums[1]) {
		shiftUpdate(largest3Nums, num, 1);
	} else if (largest3Nums[0] === null || num > largest3Nums[0]) {
		shiftUpdate(largest3Nums, num, 0);
	}
}

function shiftUpdate(largest3Nums, num, idx) {
	for (let i = 0; i <= idx; i++) {
		if (i === idx) {
			largest3Nums[idx] = num;
		} else {
			largest3Nums[i] = largest3Nums[i + 1];
		}
	}
}