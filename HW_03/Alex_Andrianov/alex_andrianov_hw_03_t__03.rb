require 'date'
require 'time'

def task_3(string)
  second_string = '', first_string = ''
  new_helper(first_string, second_string, string)
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

def new_helper(string1, _string2, main_string)
  main_string.each_line do |line|
    if line.include?('Calling core')
      if string1 == ''
        string1 = line.match(/(\d{2}\:\d{2}:\d{2}.\d{1})/)
      else
        _string2 = line.match(/(\d{2}\:\d{2}:\d{2}.\d{1})/)
      end
    end
  end
end
