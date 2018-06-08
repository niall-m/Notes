# Barrel Roll, Transpose

# You are given a n * n 2D matrix. Write a method that will transpose a matrix. 
# The transpose of a matrix is obtained by turning all of the columns of a matrix 
# into the rows and vice versa. So an element at index ij would be at index ji once tranposed.

# Example:
# Matrix = [[1, 2], [3, 4]]
# transpose(Matrix) = [[3, 4], [1, 2]]
# You may assume a square matrix as input. Do not use `.transpose`

def transpose(matrix)
  new_matrix = []
  i = 0
  while i < matrix.length
    new_matrix[i] = []
    j = 0
    while j < matrix.length
      new_matrix[i] << matrix[j][i]
      j += 1
    end
    i += 1
  end
  new_matrix
end

puts "---------Barrel_roll"
matrix_one = [[1, 2],
              [3, 4]]
matrix_two = [[1, 4, 7],
              [2, 5, 8],
              [3, 6, 9]]
matrix_three = [[1, 2, 3, 4],
                [5, 6, 7, 8],
                [9, 10, 11, 12],
                [13, 14, 15, 16]]
puts transpose(matrix_one) == [[1, 3],
                               [2, 4]]
puts transpose(matrix_two) == [[1, 2, 3], 
                               [4, 5, 6],
                               [7, 8, 9]]
                              
puts transpose(matrix_three) == [[1, 5,  9, 13],
                                 [2, 6, 10, 14],
                                 [3, 7, 11, 15],
                                 [4, 8, 12, 16]]
