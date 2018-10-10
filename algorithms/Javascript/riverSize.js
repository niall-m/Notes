// ## River Sizes
// You are given a two-dimensional array (matrix) of potentially unequal height and width containing only 0s and 1s.  
// Each 0 represents land, and each 1 represents part of a river.  A river consists of any number of 1s that are 
// either horizontally or vertically adjacent (but not diagonally adjacent). The number of adjacent 1s forming a 
// river determines its size.  Write a function that returns an array of the sizes of all rivers represented in the input matrix.  
// **Note that these sizes do not need to be in any particular order.**

// Steps:
// Create size array.
// Create a duplicate matrix demarking a visited flag to each node. 
// Iterate through matrix, check current index for 1 or 0. 
// If 1, increment river size, check adjacent indicies, mark as visited.
// If 0, mark as visited and continue to next iteration.
// When find the end of the river, push size to the river array. 
// Return result.

const example = [
  [1,0,0,1,0],
  [1,0,1,0,0],
  [0,0,1,0,1],
  [1,0,1,0,1],
  [1,0,1,1,0]
];
// expected output => [2, 1, 5, 2, 2]

function riverMatrix(matrix) {
  const result = [];
  const visited = matrix.map((row) => row.map((node) => false));
  var size;
	for (let i = 0; i < matrix.length; i++) {
    for (let j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] === 0 || visited[i][j] === true) {
        visited[i][j] = true;
        continue;
      }
      else if (matrix[i][j] === 1) {
        result.push(dfs(matrix, visited, size, i, j));
      }
    }
  }
  console.log(result);
  return result;
}

// Depth-first search of matrix

function dfs(matrix, visited, size, i, j) {
  size = size || 1;
  visited[i][j] = true;
  if (matrix[i + 1] // target index position exists in matrix
    && matrix[i + 1][j] === 1 // target position is a 1
    && visited[i + 1][j] === false) { // target hasn't been visited
    size++;
    return dfs(matrix, visited, size, i + 1, j);
  }
  if (matrix[i - 1] && matrix[i - 1][j] === 1 && visited[i - 1][j] === false) {
    size++;
    return dfs(matrix, visited, size, i - 1, j);
  }
  if (matrix[i][j + 1] && matrix[i][j + 1] === 1 && visited[i][j + 1] === false) {
    size++;
    return dfs(matrix, visited, size, i, j + 1);
  }
  if (matrix[i][j - 1] && matrix[i][j - 1] === 1 && visited[i][j - 1] === false) {
    size++;
    return dfs(matrix, visited, size, i, [j - 1]);
  }
  return size;
}

riverMatrix(example);

// This solution doesn't solve for all edge cases, e.g. when rivers split and continue into different directions.
