def task_4_1(num)
  array = []
  fibonacci_rec(num, array) if num > 0
  [] if num < 0 || num > 1000
  [0] if num.zero?
  array
end

def fibonacci_rec(num, array)
  fibo(1, 1, 1, num, array)
end

def fibo(first, second, count, num, array)
  array << first if count <= num
  fibo(second, first + second, count + 1, num, array << first) if count <= num
end
