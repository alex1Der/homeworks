def task_1(string)
  string.each_line do |line|
    return line.chomp if line.downcase.include?('error')
  end
  ''
end
