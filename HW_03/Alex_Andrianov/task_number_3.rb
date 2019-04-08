require 'date'
require 'time'

def task_3(st)
  first_string = ''
  second_string = ''
  st.each_line do |line|
    if line.include?('Calling core')
      if (first_string == '')
        first_string = line.match(/(\d{2}\:\d{2}:\d{2}.\d{1})/)
      else
        second_string = line.match(/(\d{2}\:\d{2}:\d{2}.\d{1})/)
      end
    end
  end
  first_point = DateTime.strptime(first_string.to_s,
                                  '%H:%M:%S.%L').strftime('%Q').to_i
  second_point = DateTime.strptime(second_string.to_s,
                                   '%H:%M:%S.%L').strftime('%Q').to_i
  puts(first_point - second_point) / 1000.0
end