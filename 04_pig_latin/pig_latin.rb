CONSONANT_PATTERN = /(\A[^aeio]{1,3})/

def translate(words)
  word_list = listify(words)
  pig_latin_word_list = apply_pig_latin_rules(word_list)
  phraseify(pig_latin_word_list)
end

def listify(words)
  words.split(" ")
end

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
