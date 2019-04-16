def task_4_4(string)
  true if string.upcase == string.upcase.reverse && string.empty? != true
  false if string.empty? == true
end
