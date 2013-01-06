def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  if array.empty?
    0
  else
    array.inject { |sum, n| sum + n }
  end
end