def task_4_1(num)
  fibonacci_rec(num) if num > 0
  [] if num < 0
  [0] if num.zero? == true
end

def fibonacci_rec(num)
  fibonacci(1, 1, 1, num)
end

def fibonacci(first, second, count, num)
  first.to_s + ' ' if count <= num
  fibonacci(second, first + second, count + 1, num) if count <= num
end
