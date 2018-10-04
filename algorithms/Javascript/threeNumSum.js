// function takes array of integers and target sum
// find all triplets that sum to target, return 2D array of triplets

// O(n^2) Time | O(n) Space
function threeNumSum(array, targetSum) {
  array.sort((a, b) => a - b); // sort ascending
  const result = [];
  for (let i = 0; i < array.length - 2; i++) { // up to 3rd last
    let left = i + 1; // left pointer
    let right = array.length - 1; // right pointer
    while (left < right) { // increment until pointers hit each other
      const potentialSum = array[i] + array[left] + array[right];
      if (potentialSum === targetSum) {
        result.push([array[i], array[left], array[right]]);
        left++;
        right--;
      } else if (potentialSum < targetSum) {
        left++;
      } else if (potentialSum > targetSum) {
        right--;
      }
    }
  }
  return result;
}
