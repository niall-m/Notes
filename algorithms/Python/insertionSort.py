# O(n^2) Time | O(1) Space
def insertionSort(array):
    for i in range(1, len(array)):
        j = i
        while j > 0 and array[j] < array[j - 1]: # j iterates backwards from i to start of array
            array[j], array[j - 1] = array[j - 1], array[j]
            j -= 1  # if num is greater than num right before it, swap them
    return array
