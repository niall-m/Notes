// O(nc) Time | O(nc) Space
function knapsack(items, capacity) {
  const ksMemo = [];
  for (let i = 0; i < items.length + 1; i++) {
    const row = (new Array(capacity + 1).fill(0));
    ksMemo.push(row);
  }

  for (let i = 1; i < items.length + 1; i++) {
    const weight = items[i - 1][1];
    const value = items[i - 1][0];
    for (let j = 0; j < capacity + 1; j++) {
      if (weight > j) {
        ksMemo[i][j] = ksMemo[i - 1][j];
      } else {
        ksMemo[i][j] = Math.max(ksMemo[i - 1][j], ksMemo[i - 1][j - weight] + value);
      }
    }
  }
  return [ksMemo[items.length][capacity], getIndices(ksMemo, items)];
}

function getIndices(ksMemo, items) {
  const sequence = [];
  let i = ksMemo.length - 1;
  let j = ksMemo[0].length - 1;
  while (i > 0) {
    if (ksMemo[i][j] === ksMemo[i - 1][j]) {
      i -= 1;
    } else {
      sequence.unshift(i - 1);
      j -= items[i - 1][1];
      i -=1;
    }
    if (j === 0) break;
  }
  return sequence;
}