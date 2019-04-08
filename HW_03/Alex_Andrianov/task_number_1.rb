def task_1(string)
  string.each_line do |line|
    if line.downcase.include?('error')
      return line.chomp
      break
    end
  end
  ''
end