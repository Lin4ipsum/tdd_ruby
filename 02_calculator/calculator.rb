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

def multiply(array)
  array.reduce(:*)
end

def power(num1, num2)
  num1**num2
end

def factorial(num)
  if num == 0
    0
  else
    (1..num).reduce(:*)
  end
end
