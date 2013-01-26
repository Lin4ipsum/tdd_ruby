def translate(words)
  word_list = listify(words)
  pig_latin_word_list = apply_pig_latin_rules(word_list)
  phraseify(pig_latin_word_list)
end

def listify(words)
  words.split(" ")
end

CONSONANT_PATTERN = /(\A[^aeio]{1,3})/

def add_cons_suffix(word)
  prefix = word.match(CONSONANT_PATTERN)[1]
  word[prefix.length..-1] + prefix + "ay"
end

def add_vowel_suffix(word)
  word + "ay"
end

def starts_with_consonant?(word)
  !!word.match(CONSONANT_PATTERN)
end

def apply_pig_latin_rules(word_list)
  word_list.map do |word| 
    if starts_with_consonant?(word)
      add_cons_suffix(word)
    else
      add_vowel_suffix(word)
    end
  end
end

def phraseify(pig_latin_word_list)
  pig_latin_word_list.join(" ").strip
end




# make a list of the words
# apply pig-latin rules to each word
# combine the words into a phrase
# remove the trailing space


























# def translate(string)
#   if string.match(/\A[aeio]/)
#     vowel(string)
#   elsif string[1].match(/\A[aeio]/)
#     one_consonant(string)
#   elsif string.match(/^[qu]/) or string[2].match(/\A[aeio]/)
#     two_consonant(string)
#   else string[2].match(/\A[aeio]/)
#     three_consonant(string)
#   end
# end

# def vowel(string)
#   string + "ay"
# end

# def one_consonant(string)
#   string[1..-1] + string[0] + "ay"
# end

# def two_consonant(string)
#   string[2..-1] + string[0..1] + "ay"
# end

# def three_consonant(string)
#   string[3..-1] + string[0..2] + "ay"
# end

# def translate_words(string)
#   words = string.split #array
#   puts words
#   # x = 0
#   # p = ""
#   # while x <= words.count
#   #   p << translate(words[0]) + " "
#   #   x+=1
#   end


# # def translate_words(string)
# #   words = string.split
# #   for i in 0..words.count do
# #     puts translate(words[i]) + " "
# #     i+=1
# #   end
# # end

# # end

# # split the string up on the spaces
# # turn each word into a string

# # split string into 2 strings on the space
# # "eat pie" => "eat" "pie"
# # put strings through translate
# # then join the stringds

# # def two_words(string)
# #   if string.match(/\s+/)
# #     s = string.split
# #     s.fetch



# #   it "translates two words" do
# #     s = translate("eat pie")
# #     s.should == "eatay iepay"
# #   end

# # it "counts 'qu' as a single phoneme" do
# #     s = translate("quiet")
# #     s.should == "ietquay"
 
