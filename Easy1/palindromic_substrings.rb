def substrings_at_start(str)
  result = []
  1.upto(str.size) do |i|
    result << str.slice(0,i)
  end
  result
end

def substrings(str)
  result = []
  0.upto(str.size) do |i|
    result << substrings_at_start(str[i..-1])
  end
  result.flatten
end

def palindromes(str)
  substrings(str).select { |word| word.length > 1 && word == word.reverse}
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]