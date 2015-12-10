def say_bye(name = "")
  return "Bye!" if name == ""
  "Bye, #{name}!"
end

def sum_values(input_hash)
  input_hash.values.reduce(:+)
end

def difference_two_biggest(arr)
  return 0 if arr == nil || arr.empty?
  return arr[0] if arr.length == 1
  arr.sort
  arr.pop() - arr.pop()
end
