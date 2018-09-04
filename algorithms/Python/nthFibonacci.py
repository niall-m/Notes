# Naive Recursive
# O(2^n) Time | O(n) Space
def getNthFib(n):
    if n == 2:
        return 1
    elif n == 1:
        return 0
    else:
        return getNthFib(n - 1) + getNthFib(n - 2)

# Recursive with Memoization Hash
# O(n) Time | O(n) Space
def getNthFib2(n, memoize = {1: 0, 2: 1}):
    if n in memoize:
        return memoize[n]
    else:
        memoize[n] = getNthFib2(n - 1, memoize) + getNthFib2(n - 2, memoize)
        return memoize[n]
