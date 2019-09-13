=begin
  input: str with parathese
  output: boolean
  rule: check if the parantheses is in paired
        order matters, '(' must come before ')'

  data structure: str.split -> array
  algorithm: 
      1. int unpair = 0
      2. array.each
              a. unpair += 1 if '('
              b. unpair -= 1 if ')'
              c. return false whenever unpair < 0
=end

def balanced?(str)
  unpair = 0
  return false unless str.count('(') == str.count(')')
  str.chars.each do |c|
    case c
    when '(' then unpair += 1
    when ')' then unpair -= 1
    end
    return false if unpair < 0
  end
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false