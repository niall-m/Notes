# Fibonacci Sum

# The fibonacci sequence is defined as follows:
# n  : 0  1  2  3  4  5  6  7   8   9   10 ...
# fib: 0  1  1  2  3  5  8  13  21  34  55 ...

# Write a method fib_sum(n) that returns the sum of the first n
# fibonacci numbers.

def fibonacci_sum(n)
  fibs = [1, 1]
  return 0 if n < 1
  until fibs.length == n
    fibs << fibs[-2] + fibs[-1]
  end
  fibs.reduce(:+)
end
  
puts "---------Fib_sum"
puts fibonacci_sum(0) == 0
puts fibonacci_sum(2) == 2
puts fibonacci_sum(5) == 12
puts fibonacci_sum(22) == 46367
puts fibonacci_sum(60) == 4052739537880
