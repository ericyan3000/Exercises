def palindrome?(str)
  str == str.reverse
end

def read_palindrome?(str)
  str.downcase!.delete("^a-z0-9")
  palindrome?(str)
end


puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

a = "Hello world"
puts palindrome?(a)
puts a