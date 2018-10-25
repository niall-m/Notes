# O(nd) Time | O(n) Space
def minNumOfCoinsForChange(n, denominations):
    numCoins = [float("inf") for amount in range(n + 1)]
    # len n + 1 to include base case of 0 (change for $0)
    # infinity kickstarts algo as its always larger than any comparison of coin combos
    numCoins[0] = 0
    for denom in denominations:
        for amount in range(len(numCoins)): # range(len(n + 1))
            if denom <= amount:
                numCoins[amount] = min(numCoins[amount], 1 + numCoins[amount - denom])
    return numCoins[n] if numCoins[n] != float("inf") else -1