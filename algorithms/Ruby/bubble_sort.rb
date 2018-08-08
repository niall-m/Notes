# Bubble Sort

# Write a method that, when given an array of integers, sorts that array using the "bubble sort" methodology and returns the result.

def bubble_sort(arr)
  sorted = false
  until sorted
    sorted = true
    i = 0
    while i < arr.length - 1
      if arr[i] > arr[i + 1]
        larger = arr[i]
        smaller = arr[i + 1]
        arr[i] = smaller
        arr[i + 1] = larger
        sorted = false
      end
      i += 1
    end
  end
  arr
end

puts "---------Bubble_sort"
puts bubble_sort([1, -1, 2, -2, -3, 3]) == [-3, -2, -1, 1, 2, 3]
puts bubble_sort([1, 2, 3]) == [1, 2, 3]
