=begin
  input: string
  output: string
  rule: convert all number words to digits
        remove any space between digits

  test case: word_to_digit("call me at five five five one two.") == "call me at 55512."

  data structure: string -> array
                  hash (word -> digit)

  algorithm: 1. defined hash lookup table
             2a. splict string into sentences.
             2. convert words to digits in each sentence by gsub
             3. delete any space between digits
                a.convert string to array (split)
                i. each the array, if previous element is digit, concat it to the same element in a new array.
                ii. join by space.
             3. join by ". "   
=end

NUMBER_DIGIT = {one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, zero: 0}.freeze

def word_to_digit(str)
  sentence = str.split(".")
  sentence.map {|sen| sentence_to_digit(sen)}.join(". ").concat(".")
end

def sentence_to_digit(str)
  words = str.split(" ")
  new_words = words.map do |w| 
    NUMBER_DIGIT.has_key?(w.to_sym) ? NUMBER_DIGIT[w.to_sym].to_s : w
  end
  remove_space = []
  new_words.each do |w|
    if w.to_i.to_s == w && remove_space[-1].to_i.to_s ==  remove_space[-1]
      remove_space[-1] += w
    else remove_space.push(w)
    end
  end
  remove_space.join(" ").gsub(/(\d)(\d)(\d)(\d)(\d)(\d)(\d)(\d)(\d)(\d)/,"\(\\1\\2\\3\) \\4\\5\\6-\\7\\8\\9\\10")
end


p word_to_digit("Please call me at five five five five five five one two three four. Thanks.") #== "call me at 55512."