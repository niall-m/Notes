// O(n^2) Time | O(1) Space
function insertionSort(array) {
	for (let i = 0; i < array.length; i++) { // loop through array
		let j = i;
		while (j > 0 && array[j] < array[j - 1]) { // j loops backwards to start from i
			const temp = array[j - 1]; // if num is greater than num before it, swap them
			array[j - 1] = array[j];
			array[j] = temp;
			j--;
		}
	}
	return array;
}
