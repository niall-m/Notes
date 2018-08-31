// Naive Recursive
// O(2^n) Time | O(n) Space
function nthFib(n){
  if (n === 2) {
    return 1;
  } else if (n === 1) {
    return 0;
  } else {
    return nthFib(n - 1) + nthFib(n - 2);
  }
}
