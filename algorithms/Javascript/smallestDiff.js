// Function takes two arrays of integers. Find bestPairs between the arrays
// where the absolute difference is closest to zero

// O(nlog(n) + mlog(n)) Time | O(1) Space
function smallestDiff(array1, array2) {
  array1.sort((a,b) => a - b);
  array2.sort((a,b) => a - b);
  let idx1 = 0;
  let idx2 = 0;
  let smallest = Infinity; // used for comparing first pair, which is gauranteed smaller
  let current = Infinity; // need arbitrary num to kickstart algo, but can't use null
  let bestPair = [];
  while (idx1 < array1.length && idx2 < array2.length) {
    let num1 = array1[idx1];
    let num2 = array2[idx2];
    if (num1 < num2) {
      current = num2 - num1;
      idx1++;
    } else if (num2 < num1) {
      current = num1 - num2;
      idx2++;
    } else { // they're equal, abs diff equates to 0
      return [num1, num2];
    }
    if (current < smallest) {
      smallest = current;
      bestPair = [num1, num2];
    }
  }
  return bestPair;
}