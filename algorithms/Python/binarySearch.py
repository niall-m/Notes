# Recursive Binary Search
# O(Log(n)) Time | O(Log(n)) Space
def binarySearch(array, target):
    return binarySearchHelper(array, target, 0, len(array) - 1)

def binarySearchHelper(array, target, left, right):
    if left > right:
        return -1
    middle = (left + right) // 2 # divided by 2 rounded down
    potentialMatch = array[middle]
    if target == potentialMatch:
        return middle
    elif target < potentialMatch: # search left half of array
        return binarySearchHelper(array, target, left, middle - 1)
    else: # target > potentialMatch, search right half of array
        return binarySearchHelper(array, target, middle + 1, right)

# Iterative Binary Search
# O(Log(n)) Time | O(1) Space
def binarySearch2(array, target):
    left = 0
    right = len(array) - 1
    while left <= right:
        middle = (left + right) // 2
        potentialMatch = array[middle]
        if target == potentialMatch:
            return middle
        elif target < potentialMatch:
            right = middle - 1
        else:
            left = middle + 1
    return -1