def translate(string)
  if string.match(/\A[aeiou]/)
    begin_w_vowel(string)
  elsif string[1].match(/\A[aeiou]/)
    one_consonant(string)
  else
    two_consonant(string)
  end
end

def begin_w_vowel(string)
  string + "ay"
end

def one_consonant(string)
  string[1..-1] + string[0] + "ay"
end

def two_consonant(string)
  string[2..-1] + string[0..1] + "ay"
end


  it "translates two words" do
    s = translate("eat pie")
    s.should == "eatay iepay"
  end

 
