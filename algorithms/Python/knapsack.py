# O(Nc) Time | O(Nc) Space
# where N = num items, c = capacity

def knapsack(items, capacity): # items is nested array, eg [[1,1], [4,2]]; [value, weight]
    ksMemo = [[0 for x in range(0, capacity + 1)] for y in range(0, len(items) + 1)]
    # initialize memoization with row of 0's to compare weights in first iteration
    # we want as many rows as columns, plus 1 for empty items row base-case
    for i in range(1, len(items) + 1): # we can start at 1 cuz top row will be 0's
        currentWeight = items[i - 1][1] # we have additional row at top for empty items, starts at - 1
        currentValue = items[i - 1][0]
        for j in range(0, capacity + 1): # j will equal capacity
            if currentWeight > j: # if yes, it won't fit
                ksMemo[i][j] = ksMemo[i - 1][j]
            else: # we can fit current item in sack
                ksMemo[i][j] = max(ksMemo[i - 1][j], ksMemo[i - 1][j - currentWeight] + currentValue)
                # compare values: last row at current knapsack weight VS. (last row at current knapsack weight - current item weight) + current item value
    return [ksMemo[-1][-1], getKSItems(ksMemo, items)]

def getKSItems(ksMemo, items):
    sequence = []
    i = len(ksMemo) - 1 # current index 
    j = len(ksMemo[0]) - 1 # capacity index, columns
    while i > 0: # while we're not at the first row
        if ksMemo[i][j] == ksMemo[i - 1][j]: # if current is equal to previous row capacity
            i -= 1 # update i, move up to previous row; it wasn't included in knapsack
        else: # if they're not equal
            sequence.append(i - 1)
            j -= items[i - 1][1] # update capacity index
                # we know our KS has item at index i-1, so remove that items weight from current capacity
            i -= 1
        if j == 0:
            break # there's nothing else to add
    return list(reversed(sequence)) # return in ascending order
    