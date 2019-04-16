def task_4_1(num)
  fibonacci_rec(num) if num > 0
  [] if num < 0 || num > 1000
  [0] if num.zero?
end

def fibonacci_rec(num)
  fibonacci(1, 1, 1, num)
end

def fibonacci(first, second, count, num, array = [])
  array << first if count <= num
  array
  fibonacci(second, first + second, count + 1, num) if count <= num
end
