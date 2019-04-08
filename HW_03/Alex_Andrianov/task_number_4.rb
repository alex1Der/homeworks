# task_4 method will return the sum of all digits in your string

def task_4(string)
  string.split(//).map{|x| x[/\d+/].to_i}.sum
end
