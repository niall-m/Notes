# non-empty array of integers, return the max sum obtained by summing all adjacent nums in a subarray of input array

# O(n) Time | O(1) Space
def kadanesAlgorithm(array):
    maxEndingHere = array[0]
    maxSoFar = array[0]
    # for num in array[1:]: # slicing takes up extra space
    for i in range(1, len(array)):
        num = array[i]
        maxEndingHere = max(num, maxEndingHere + num)
        maxSoFar = max(maxSoFar, maxEndingHere)
    return maxSoFar
