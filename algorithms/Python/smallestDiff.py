# O(nlog(n) + mlog(m)) Time | O(1) Space
def smallestDiff(arr1, arr2):
    arr1.sort()
    arr2.sort()
    idx1 = 0
    idx2 = 0
    smallest = float("inf")
    current = float("inf")
    bestPair = []
    while idx1 < len(arr1) and idx2 < len(arr2):
        num1 = arr1[idx1]
        num2 = arr2[idx2]
        if num1 < num2:
            current = num2 - num1
            idx1 += 1
        elif num2 < num1:
            current = num1 - num2
            idx2 += 1
        else: # they're equal, their diff is 0
            return [num1, num2]
        if current < smallest:
            smallest = current
            bestPair = [num1, num2]
    return bestPair
    