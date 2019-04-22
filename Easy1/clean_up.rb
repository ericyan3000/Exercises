def cleanup(str)
  result = str.split.map do |word|
    cleanup_word(word)
  end
  result.join(" ").squeeze(' ')
end

def cleanup_word(str)
  new_word = str.chars.map do |char|
    if [*('a'..'z'), *('A'..'Z')].include?(char)
      first_sym = true
      char
    else
      " "
    end
  end
  new_word.join.squeeze(' ')
end

def cleanup2(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?")