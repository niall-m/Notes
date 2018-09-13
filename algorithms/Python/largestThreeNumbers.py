# O(n) Time | O(1) Space
def findLargestThreeNumbers(array):
    largestThree = [None, None, None]
    for num in array:
        updateLargest(largestThree, num)
    return largestThree

def updateLargest(largestThree, num):
    if largestThree[2] is None or num > largestThree[2]:
        shiftUpdate(largestThree, num, 2)
    elif largestThree[1] is None or num > largestThree[1]:
        shiftUpdate(largestThree, num, 1)
    elif largestThree[0] is None or num > largestThree[0]:
        shiftUpdate(largestThree, num, 0)

def shiftUpdate(array, num, idx):
    # [a, b, c]
    # [0, 1, 2] (indices)
    # for i in range(0, 2 + 1), if i == 2: => [a, b, num]
    for i in range(idx + 1): # python ranges are exclusive
        if i == idx:
            array[i] = num
        else:
            array[i] = array[i + 1]