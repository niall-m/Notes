// O(n^2) Time | O(1) Space
function bubbleSort(array) {
	let sorted = false;
	let counter = 0;
	while (!sorted) {
		sorted = true;
		for (let i = 0; i < array.length - 1 - counter; i++) {
			if (array[i] > array[i + 1]) {
				const temp = array[i + 1];
				array[i + 1] = array[i]; // swap positions
				array[i] = temp;
				sorted = false;
			}
		}
		counter++;
	}
	return array;
}

// minimal optimization on an inefficient algorithm: add a counter
// last index is sorted after each iteration
// avoids iterating through indices we already know to be sorted
