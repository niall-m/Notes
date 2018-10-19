# O(n) Time | O(n) Space
def maxNonAdjacentSubsetSum(array):
    if not len(array): # if array is empty
        return 0
    elif len(array) == 1:
        return array[0]
    maxSums = array[:] # copy of whole array, maxSums[0] = array[0]
    maxSums[1] = max(array[0], array[1])
    for i in range(2, len(array)):
        maxSums[i] = max(maxSums[i - 1], maxSums[i - 2] + array[i])
    return maxSums[-1]

# O(n) Time | O(1) Space
def maxSubsetSumNonAdjacent(array):
    if not len(array):
        return 0
    elif len(array) == 1:
        return array[0]
    second = array[0] # represents maxSums[i - 2]
    first = max(array[0], array[1]) # represents maxSums[i - 1]
    for i in range(2, len(array)):
        current = max(first, second + array[i])
        second = first
        first = current
    return first