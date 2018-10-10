// O(n^2) Time | O(1) Space
function bubbleSort(array) {
	let sorted = false; // assume array is unsorted
	let counter = 0;
	while (!sorted) { // while not sorted: keep looping until it is!
		sorted = true; // assume array might be sorted at start of each iteration
		for (let i = 0; i < array.length - 1 - counter; i++) { // loop to end of array
			if (array[i] > array[i + 1]) { // if next num is larger, its not sorted
				const temp = array[i + 1]; // swap their positions
				array[i + 1] = array[i]; 
				array[i] = temp;
				sorted = false; // and mark it unsorted
			}
		}
		counter++; // block scope access to counter
	}
	return array;
}

// minimal optimization on an inefficient algorithm: add a counter
// last index is guaranteed to be sorted after each loop
// avoids iterating through indices we already know to be sorted
// still O(n^2)
