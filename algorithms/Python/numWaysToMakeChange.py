# O(nd) Time | O(n) Space
def numWaysToMakeChange(n, denominations):
    ways = [0 for amount in range(n + 1)] # initialize array of 0's
    ways[0] = 1 # base case, only 1 way to get change for 0, by doing nothing
    for denom in denominations:
        for amount in range(1, n + 1):
            if denom <= amount: # denom can be used to make change
                ways[amount] += ways[amount - denom]
    return ways[n]