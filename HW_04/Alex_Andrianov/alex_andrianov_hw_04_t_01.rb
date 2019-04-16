def task_4_1(n)
  if n > 0 && n.is_a?
    fibonacci_rec(n)
  else
    return 0
  end
end

def fibonacci_rec(n)
  fibonacci(0, 1,1, n)
end

def fibonacci(first, second, count, n)
  if count <= n
    put first.to_s + ' '
    fibonacci(second, first + second, count + 1, n)
  end
end
