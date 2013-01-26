def translate(string)
  if string.match(/\A[aeio]/)
    vowel(string)
  elsif string[1].match(/\A[aeio]/)
    one_consonant(string)
  elsif string.match(/^[qu]/) or string[2].match(/\A[aeio]/)
    two_consonant(string)
  else string[2].match(/\A[aeio]/)
    three_consonant(string)
  end
end

def vowel(string)
  string + "ay"
end

def one_consonant(string)
  string[1..-1] + string[0] + "ay"
end

def two_consonant(string)
  string[2..-1] + string[0..1] + "ay"
end

def three_consonant(string)
  string[3..-1] + string[0..2] + "ay"
end

def translate_words(string)
  words = string.split #array
  puts words
  # x = 0
  # p = ""
  # while x <= words.count
  #   p << translate(words[0]) + " "
  #   x+=1
  end


# def translate_words(string)
#   words = string.split
#   for i in 0..words.count do
#     puts translate(words[i]) + " "
#     i+=1
#   end
# end

# end

# split the string up on the spaces
# turn each word into a string

# split string into 2 strings on the space
# "eat pie" => "eat" "pie"
# put strings through translate
# then join the stringds

# def two_words(string)
#   if string.match(/\s+/)
#     s = string.split
#     s.fetch



#   it "translates two words" do
#     s = translate("eat pie")
#     s.should == "eatay iepay"
#   end

# it "counts 'qu' as a single phoneme" do
#     s = translate("quiet")
#     s.should == "ietquay"
 
