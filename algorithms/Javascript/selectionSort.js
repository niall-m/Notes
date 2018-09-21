// O(n^2) Time | O(1) Space
function selectionSort(array) {
	for (let startIdx = 0; startIdx < array.length - 1; startIdx++) {
    let smallestIdx = startIdx;
    for (let i = startIdx + 1; i < array.length; i++) {
      if (array[smallestIdx] > array[i]) smallestIdx = i;
    }
    const temp = array[smallestIdx];
    array[smallestIdx] = array[startIdx];
    array[startIdx] = temp;
  }
  return array;
}

// starts with unsorted array and two sublists, sorted and unsorted. 
// iterate through unsorted list, finding smallest number
// append to the start of the sorted sublist
// rinse and repeat until the unsorted list is empty
// to do in place, simply swap smallest number to the startIdx on each iteration