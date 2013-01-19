def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num=2)
  ("#{string} " * num).strip
end

def start_of_word(string, num)
  string[0..num-1]
end

def first_word(string)
  string.split(" ").first
end

def titleize(string)
  string.capitalize.split(" ").map do |word| 
    capitalize_or_not(word) 
  end.join(" ")
end

def little_words
  %w{and over the}
end

def capitalize_or_not(word)
  little_words.include?(word) ? word : word.capitalize
end
