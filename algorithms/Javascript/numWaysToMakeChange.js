// O(nd) Time | O(n) Space
function numWaysToMakeChange(n, denominations) {
	const ways = (new Array(n + 1)).fill(0);
	ways[0] = 1;
	for (let denom of denominations) { // iterate through each denomination
		for (let amount = 1; amount < n + 1; amount++) { // iterate
			if (denom <= amount) {
				ways[amount] += ways[amount - denom];
			}
		}
	}
	return ways[n];
}
