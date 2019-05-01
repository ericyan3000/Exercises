def double_consonants(str)
  str.chars.map {|x| 
    if x.downcase =~ (/[a-z]/) && x.downcase =~ (/[^a|^e|^i|^o|^u]/)
      x*2 
    else
      x
    end
  }.join()
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""