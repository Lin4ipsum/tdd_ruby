require 'Rational'
require 'mathn'

def ftoc(number)
  (number-32)*(Rational(5/9))
end

def ctof(number)
  (number*1.8) + 32
end
