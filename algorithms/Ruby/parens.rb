def well_formed(str)
    stack = []
    map = { "{" => "}", "[" => "]", "(" => ")" }
    str.chars.each do |char|
        if char == "[" || char == "(" || char == "{"
            stack.push(char)
        end
        if char == "}" || char == "]" || char == ")"
            if map[stack.last] == char 
                stack.pop
            else
                return false
            end
        end
    end
    stack.empty?
end

well_formed("{[]()")

def well_formed_solution(str)
    left_chars = []
    lookup = { "{" => "}", "[" => "]", "(" => ")" }
    str.chars.each do |char|
        if lookup.keys.include?(char)
            left_chars << char
        elsif left_chars.length == 0 || lookup[left_chars.pop] != char
            return false
        end
    end
    left_chars.empty?
end
# using a stack 
# break down problem into test cases

# Single Element in a Sorted Array
# Given a sorted array consisting of only integers where every element appears 
# twice except for one element which appears once. Find this single element that 
# only appears once. Do it in O(logn) time and O(1) space.

def single_in_sorted(arr)
    lo = 0
    hi = arr.length - 1
    # stopping condition is when our window has closed
    while lo < hi
      # cutting the array in half
      mid = ((hi - lo) / 2) + lo
      # returning the item if it doesn't have a pair nearby
      return arr[mid] if arr[mid] != arr[mid-1] && arr[mid] != arr[mid+1]
      # if the index is odd and there is a pair below,
      # then the single element is above us
      # if index is even and the pair is above, same;
      # otherwise, the single element is below us
      if (arr[mid] == arr[mid-1] && mid.odd?) ||
        (arr[mid] == arr[mid+1] && mid.even?)
        lo = mid + 1
      else
        hi = mid - 1
      end
    end
    # if we haven't returned yet, then the single
    # element is at the index we closed over
    arr[lo]
  end