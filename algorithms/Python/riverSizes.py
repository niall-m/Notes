# O(wh) or O(n) Time | O(wh) Space
def riverSizes(matrix):
    sizes = []
    visited = [[False for value in row] for row in matrix] # duplicate matrix with boolean flags
    for i in range(len(matrix)):
        for j in range(len(matrix[i])): # matrix might not have same width and height
            if visited[i][j]: # == True
                continue
            traverse(i, j, matrix, visited, sizes)
    return sizes

def traverse(i, j, matrix, visited, sizes):
    currentRiverSize = 0 # could be dealing with a new river
    nodesToExplore = [[i, j]] # stack for depth-first search 
    while len(nodesToExplore):
        currentNode = nodesToExplore.pop()
        i = currentNode[0]
        j = currentNode[1]
        if visited[i][j]:
            continue # skip visited
        visited[i][j] = True
        if matrix[i][j] == 0:
            continue # skip land
        currentRiverSize += 1
        unvisitedNeighborNodes = getNeighbors(i, j, matrix, visited)
        for neighbor in unvisitedNeighborNodes:
            nodesToExplore.append(neighbor)
    if currentRiverSize > 0:
        sizes.append(currentRiverSize)

def getNeighbors(i, j, matrix, visited):
    unvisitedNeighbors = []
    if i > 0 and not visited[i - 1][j]: # if there is a node above and it hasn't been visited
        unvisitedNeighbors.append([i - 1, j])
    if i < len(matrix) - 1 and not visited[i + 1][j]: # not in bottom row and node is unvisited
        unvisitedNeighbors.append([i + 1, j])
    if j > 0 and not visited[i][j - 1]: # not in leftmost column, left neighbor node unvisited
        unvisitedNeighbors.append([i, j - 1])
    if j < len(matrix[0]) - 1 and not visited[i][j + 1]: # not in rightmost column, neighbor unvisted
        unvisitedNeighbors.append([i, j + 1])
    return unvisitedNeighbors