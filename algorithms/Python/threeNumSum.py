# O(n^2) Time | O(n) Space
def threeNumSum(array, target):
    array.sort()
    result = []
    for i in range(len(array) - 2):
        left = i + 1
        right = len(array) - 1
        while left < right:
            potentialMatch = array[i] + array[left] + array[right]
            if potentialMatch == target:
                result.append([array[i], array[left], array[right]])
                left += 1
                right -= 1
            elif potentialMatch < target:
                left += 1
            elif potentialMatch > target:
                right -= 1
    return result