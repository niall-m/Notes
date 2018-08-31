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

// Recursive with Memoization Hash
// O(n) Time | O(n) Space
function nthFib2(n, memo = {1: 0, 2: 1}) { // initialize memo-hash with 2 base cases above
  if (n in memo) { // see whether this fib has already been calculated
    return memo[n];
  } else {
    memo[n] = nthFib2(n - 1, memo) + nthFib2(n - 2, memo); // store fib in hash to circumvent redundant calculations
    return memo[n];
  }
}