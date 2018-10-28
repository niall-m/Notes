# function takes in 2 strings, returns the minimum number of edit operations needed
# to make string1 equal to string2 (insert, delete, substitute)

# str1 = "abcd", str2 = "zabc"
#    '', a, b, c, d
# '' [0, 1, 2, 3, 4] base case row
#  z [1, 1, 2, 3, 4]
#  a [2, 1, 2, 3, 4]
#  b [3, 2, 1, 2, 3]
#  c [4, 3, 2, 1, 2]

# O(nm) Time | O(nm) Space
def levenshtein(str1, str2):
    edits = [[x for x in range(len(str1) + 1)] for y in range(len(str2) + 1)]
    # need as many columns as there are letters in str1 + 1 for empty str, same for str2 with rows
    for i in range(1, len(str2) + 1):
        edits[i][0] = edits[i - 1][0] + 1
    for i in range(1, len(str2) + 1):
        for j in range(1, len(str1) + 1):
            if str2[i - 1] == str1[j - 1]: # shifted by 1 for empty str, if letters are the same
                edits[i][j] = edits[i - 1][j - 1]
            else: # take min of 2-D array, above, diagonal, or left
                edits[i][j] = 1 + min(edits[i - 1][j], edits[i][j - 1], edits[i - 1][j - 1])
    return edits[-1][-1]
