require 'date'
require 'time'

def task_3(string)
  first_string = ''
  second_string = ''
  string.each_line do |line|
    if line.include?('Calling core')
      if first_string == ''
        first_string = line.match(/(\d{2}\:\d{2}:\d{2}.\d{1})/)
      else
        second_string = line.match(/(\d{2}\:\d{2}:\d{2}.\d{1})/)
      end
    end
  end
  helper(first_string, second_string)
end

def helper(first_string, second_string)
  first_point = DateTime.strptime(first_string.to_s,
                                  '%H:%M:%S.%L').strftime('%Q').to_i
  second_point = DateTime.strptime(second_string.to_s,
                                   '%H:%M:%S.%L').strftime('%Q').to_i
  a = (first_point - second_point) / 1000.0
  a.to_s
end
