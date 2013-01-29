class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(options)
    options = { options => nil } if options.class == String
    @entries = @entries.merge(options)
  end

  def keywords
    @entries.keys.sort
  end

  def include?(string)
    @entries.has_key?(string)
  end

  def find(word)
    @entries.select { |k,v| k.match(/#{word}/) } || {}
  end

  def printable
    strings = []
    @entries.sort.each do |k,v| 
      strings << "[#{k}] \"#{v}\""
    end
    strings.join("\n")
  end
end