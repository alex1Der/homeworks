require 'yaml'

def task_4_2(input)
  if input.empty?
    input
  else
    new_inp = YAML.safe_load(input)
    new_inp.map { |key, value| [key.to_sym => value_sel(value)] }.flatten
  end
end

def default_magic_number(default_value)
  if default_value['pool'].nil?
    default_value['pool'] = 1
  elsif default_value['timeout'].nil?
    default_value['timeout'] = 1000
  end
  default_value['pool'].to_i * default_value['timeout'].to_i
end

def value_sel(selected_value)
  result_value = {}
  if selected_value.key?('database')
    result_value[:db] = selected_value['database']
  end
  if selected_value.key?('username')
    result_value[:user] = selected_value['username']
  end
  if selected_value.key?('password')
    result_value[:password] = selected_value['password']
  end
  result_value[:magic_number] = default_magic_number(selected_value)
  result_value
end
