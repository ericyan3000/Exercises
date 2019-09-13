=begin
  input: string
  output: hash {lowercase: #, upercase: #, neither: #}
  rule: at least one character
        count percentage of lowercase, uppercaser, neither (# of each and total #)

 data structure: string.chars -> array
 algorithm: 1. create array
            2. array.each and populate the hash
              a. check each letter is uppercase, lowercase, uppercase hsh[:s].uppercaser == hsh[:s].lowercase
              b. increment hash[uppercaser/lowercaser/neither] += 1
            3. return the hash
  
=end

def letter_percentages(str)
  hsh = {lowercase: 0, uppercase: 0, neither: 0}
  total = str.size
  hsh[:lowercase] = (str.count('[a-z]') * 100.0 / total).round(2)
  hsh[:uppercase] = (str.count('[A-Z]') * 100.0 / total).round(2)
  hsh[:neither] = (str.count('^[A-Z]^[a-z]') * 100.0 / total).round(2)
  hsh
end

p letter_percentages('abCdef 123')
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('aB!') 