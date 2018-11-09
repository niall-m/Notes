// Given a 2D array of potentially unequal height and width containing only 0s and 1s,
// where 0 represents land and 1 represents part of a river, create a function that returns 
// an array of the sizes of all rivers represented in the input matrix. 
// Rivers are horizontally or vertically, but not diagonally, adjacent.

// Steps:
// Create size array.
// Create a duplicate matrix demarking a visited flag to each node. 
// Iterate through matrix, skip visited nodes, depth-first search to traverse adjacent nodes.
// If visited, skip.
// If 0, mark as visited and continue to next iteration.
// If 1, increment river size, check adjacent indicies, mark as visited.
// After traversing currentNode, push river size to the array.
// Return result when matrix loop is finished.

// O(wh) Time | O(wh) Space
function riverSizes(matrix) {
  const sizes = [];
  const visited = matrix.map(row => row.map(value => false));
  for (let i = 0; i < matrix.length; i++) {
    for (let j = 0; j < matrix[i].length; j++) {
      if (visited[i][j]) continue;
      traverseNode(i, j, matrix, visited, sizes);
    }
  }
  return sizes;
}

function traverseNode(i, j, matrix, visited, sizes) {
  let currentRiverSize = 0; // could be dealing with a new river
  const nodesToExplore = [[i, j]]; // stack for depth-first search
  while (nodesToExplore.length) {
    const currentNode = nodesToExplore.pop();
    i = currentNode[0];
    j = currentNode[1];
    if (visited[i][j]) continue; // skip visited
    visited[i][j] = true;
    if (matrix[i][j] === 0) continue; // skip land
    currentRiverSize++; // if we made it this far, its unvisited river, increment size
    const unvisitedNeighbors = getUnvisitedNeighbors(i, j, matrix, visited);
    for (const neighbor of unvisitedNeighbors) nodesToExplore.push(neighbor);
  }
  if (currentRiverSize > 0) sizes.push(currentRiverSize);
}

function getUnvisitedNeighbors(i, j, matrix, visited) {
  const unvisitedNeighbors = [];
  if (i > 0 && !visited[i - 1][j]) unvisitedNeighbors.push([i - 1, j]); // if there is a node above and it's unvisited
  if (i < matrix.length - 1 && !visited[i + 1][j]) unvisitedNeighbors.push([i + 1, j]); // if there is a node below
  if (j > 0 && !visited[i][j - 1]) unvisitedNeighbors.push([i, j - 1]); // if there is a node to the left
  if (j < matrix[i].length - 1 && !visited[i][j + 1]) unvisitedNeighbors.push([i, j + 1]); // if there is a node to the right
  return unvisitedNeighbors;
}