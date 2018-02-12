# I/O STDIN / STDOUT Ruby Algorithms

# Review
# 2
# Hacker
# Rank
# => Hce akr
# => Rn ak

n = gets.strip.to_i
n.times do |i|
    indices_hash = { "evens" => [], "odds" => [] }
    str = gets.strip
    str.each_char.with_index do |c, i|
        if i > 10000
            break
        elsif i % 2 == 0
            indices_hash["evens"] << c
        else
            indices_hash["odds"] << c
        end
    end
    evens = indices_hash["evens"].join.to_s
    odds = indices_hash["odds"].join.to_s
    puts "#{evens}" + " " + "#{odds}"
end


# Arrays - STDIN STDOUT reverse
# 4
# 1 4 3 2
# => 2 3 4 1

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)
result, i, j  = [], 0, 0

while i < arr.length
    result.unshift(arr[i])
    i += 1
end

while j < result.length
    if j == result.length - 1
        print "#{result[j]}"
        j += 1
    else
        print "#{result[j]}" + " "
        j += 1
    end
end


# Dictionaries and Maps
# 3
# sam 99912222
# tom 11122222
# harry 12299933
# sam
# edward
# harry
# => sam=99912222
# => Not found
# => harry=12299933

n = gets.strip.to_i
return false if n > (10 ** 5)
hash = {}

n.times do |i|
    line = gets.split(" ")
    hash[line[0]] = line[1] if line.length > 1
end

while name = gets.strip
    if hash.key?(name)
        puts "#{name}=#{hash[name]}"
    else
        puts "Not found"
    end
end


# Recursion
# 3
# => 6

def factorial(n)
    n == 1 ? 1 : n * factorial(n - 1)
end
n = gets.strip.to_i
result = factorial(n)
puts result


# Convert Base 10 to Binary, count number of consecutive 1's
# 13
# => 2

n = gets.strip.to_i
return false if n < 1 || n > (10 ** 6)

def binarify(num)
    return [] if num <= 0
    first, second = (num / 2), (num % 2)
    binarify(first) << second
end

result, count, best_counts, result_str = binarify(n), 1, [], ""

result.each_with_index do |num, idx|
  next_el = result[idx + 1]
  result_str += num.to_s
  
  if num == 1 && num == result[idx + 1]
    count += 1
  else
    best_counts << count
    count = 1
  end
end

puts result_str
puts best_counts.max
# find bitwise complement in base10
answer = ""
result_str.each_char do |ch|
  if ch == "1"
    answer += "0"
  else
    answer += "1"
  end
end
puts answer.to_i(2)


# 2D Arrays, hourglass sums
# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 2 4 4 0
# 0 0 0 2 0 0
# 0 0 1 2 4 0
# => 19

arr = Array.new(6)
for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end

sums = []

(0..3).each do |i|
   (0..3).each do |j|
       
       sum =
            arr[i][j] + 
            arr[i][j+1] + 
            arr[i][j+2] + 
            arr[i+1][j+1] + 
            arr[i+2][j] + 
            arr[i+2][j+1] + 
            arr[i+2][j+2]

       sums << sum
   end
end

print sums.max

# Linked List
class Node
    attr_accessor :data,:next

    def initialize data
        @data = data
        @next = nil
    end
end

class Solution 
    def insert(head,value)
        if head == nil
            head = Node.new(value)
        else
            current = head
            while current.next != nil
                current = current.next
            end
            current.next = Node.new(value) 
        end
        head
    end
    def display(head)
        current = head
        while current 
           print current.data," "
           current = current.next
        end
    end
end
  