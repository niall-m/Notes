# O(n^2) time | O(1) space
def twoNumberSum(array, targetSum):
    for i in range(len(array) - 1):
        firstNum = array[i]
        for j in range(i + 1, len(array)):
            secondNum = array[j]
            if firstNum + secondNum == targetSum:
                return sorted([firstNum, secondNum])
    return []

# O(n) time | O(n) space
def twoNumberSum2(array, targetSum):
    nums = {}
    for num in array:
        potentialMatch = targetSum - num
        if potentialMatch in nums:
            return sorted([potentialMatch, num])
        else: # store num in hash
            nums[num] = True
    return []
# e.g. twoNumberSum([1, 4, 2, 6, 9], 11)

# O(nlog(n)) time | O(1) space
def twoNumberSum3(array, targetSum):
    array.sort()
    left = 0
    right = len(array) - 1
    while left < right:
        currentSum = array[left] + array[right]
        if currentSum == targetSum:
            return [array[left], array[right]]
        elif currentSum < targetSum:
            left += 1
        elif currentSum > targetSum:
            right -= 1
    return []
