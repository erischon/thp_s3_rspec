def echo (str)
  return str
end

def shout(str)
  str.upcase
end

def repeat(str, i=2)
  ((str + " ") * i).strip
end

def start_of_word(str, i)
  str[0..i - 1]
end

def first_word(str)
  str.split(" ").first
end

def titleize(str)
  str.capitalize!
  ignored_words = ["and", "the"]

  str = str.split(" ").map do |x|
    if ignored_words.include? x
      x
    else
      x.capitalize
    end
  end

  return str.join(" ")
end
