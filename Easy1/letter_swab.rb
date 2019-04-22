def swab_word(str)
  first_letter = str[0]
  last_letter = str[-1]
  str[-1] = first_letter
  str[0] = last_letter
  str
end

def swap(arr)
  new_sentence = []
  arr.split.each do |word|
    new_sentence << swab_word(word)
  end
  new_sentence.join(" ")
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'