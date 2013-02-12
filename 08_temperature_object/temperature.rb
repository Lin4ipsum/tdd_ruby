class Temperature

  @ops = {}
  class << self
    def from_celsius(num)
      Temperature.new({c: num})
    end

    def from_fahrenheit(num)
      Temperature.new({f: num})
    end
  end

  def initialize(options = {})
    @ops = options
  end

  def in_fahrenheit
    if @ops[:c]
      c = @ops[:c]
      f = (c/(5.0/9.0) + 32) 
    else 
      @ops[:f]
    end
  end

  def in_celsius
    if @ops[:f]
      f = in_fahrenheit
      c = (5.0/9.0)*(f-32)
    else
      @ops[:c]
    end
  end

end

class Celsius < Temperature

  def initialize(num)
    super()
    @ops[:c] = num
  end

end

class Fahrenheit < Temperature

  def initialize(num)
    super()
    @ops[:f] = num
  end

end




