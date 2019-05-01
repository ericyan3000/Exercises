def prompt(str)
  puts("=> Enter a #{str}:")
end


words = []
prompt("noun")
words[0] = gets.chomp
prompt("verb")
words[1] = gets.chomp
prompt("adjective")
words[2] = gets.chomp
prompt("adverb")
words[3] = gets.chomp

puts ("Do you #{words[1]} your #{words[2]} #{words[0]} #{words[3]}? That's hilarious!")
