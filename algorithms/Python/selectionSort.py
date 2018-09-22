# O(n^2) Time | O(1) Space
def selectionSort(array):
    idx = 0 # idx of first num (starting pos) of unordered sublist
    while idx < len(array) - 1: # when we get to end of array, it's finished
        smallestIdx = idx
        for i in range(idx + 1, len(array)): # iterate through unordered list
            if array[smallestIdx] > array[i]: # at each point, if num is greater than current num
                smallestIdx = i # then update the smallestidx to be the current idx
        array[idx], array[smallestIdx] = array[smallestIdx], array[idx]
        idx += 1
    return array