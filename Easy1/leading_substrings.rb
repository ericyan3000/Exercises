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



p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

p substrings('abcde')
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]