def translate(str)
  # Plusieurs mots
  if str.split(" ").length > 1
    str.split(" ").map { |word| translate_word(word) }.join(" ")
  else
    translate_word(str) # Un seul mot
  end
end

def translate_word(str)
  str.gsub!("sch", "@")
  str.gsub!("qu", "#")

  # translates a word beginning with three consonants
  if is_consonant(str[0]) && is_consonant(str[1]) && is_consonant(str[2])
    str = str[3..str.length] + str[0..2] + "ay"
    str.gsub!("@", "sch")
    str.gsub!("#", "qu")
    return str
  end

  # translates a word beginning with two consonants
  if is_consonant(str[0]) && is_consonant(str[1])
    str = str[2..str.length] + str[0..1] + "ay"
    str.gsub!("@", "sch")
    str.gsub!("#", "qu")
    return str
  end

  # translates a word beginning with a consonant
  if is_consonant(str[0])
    str = str[1..str.length] + str[0] + "ay"
    str.gsub!("@", "sch")
    str.gsub!("#", "qu")
    return str
  end

  # translates a word beginning with a vowel
  if is_vowel(str[0])
    str = str + "ay"
    str.gsub!("@", "sch")
    str.gsub!("#", "qu")
    return str
  end
end

def is_vowel(c)
  c =~ /[aeiouy]/
end

def is_consonant(c)
  c !~ /[aeiouy]/ || c == '@' || c == '#'
end