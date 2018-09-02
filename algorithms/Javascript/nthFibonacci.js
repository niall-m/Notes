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

// Iterative approach
// O(n) Time | O(1) Space
function nthFib3(n) {
	let fibs = [0, 1]; // base case, first 2 nums in fib sequence
	let counter = 3; // already have 2 in base case, starts by calculating the 3rd
	while (counter <= n) {
		let nextFib = fibs[0] + fibs[1]; // add current fibs to calculate next in sequence
		fibs[0] = fibs[1]; // shift through sequence, replace first fib with second
		fibs[1] = nextFib; // replace second fib with nextFib => [0, 1] => [1, 1] => [1, 2]
		counter++;
  }
  return n > 1 ? fibs[1] : fibs[0]; // edgecase for nthFib(1)
}