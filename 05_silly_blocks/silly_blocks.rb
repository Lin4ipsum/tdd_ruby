def reverser(&block)
  if yield.include?(" ")
    words(yield).join(" ")
  else
    yield.reverse
  end
end

def words(string)
  splt_string = string.split(" ")
  splt_string.each do |x|
    x.reverse!
  end
end

def adder(num=1)
  yield + num
end

def repeater(num=1)
  num.times { yield }
end
