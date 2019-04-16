def task_4_1(num)
  fibonacci_rec(num) if num > 0 && num.is_a? 
  0 if num.zero?
end

def fibonacci_rec(num)
  fibonacci(0, 1, 1, num)
end

def fibonacci(first, second, count, num)
  if count <= num
    put first.to_s + ' '
    fibonacci(second, first + second, count + 1, num)
  end
end
