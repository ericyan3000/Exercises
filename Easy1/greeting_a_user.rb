p ("What is your name?")
answer = gets.chomp
greeting = "Hello #{answer}."
if answer[-1] == '!'
  puts greeting.upcase + "WHY ARE YOU SCREEMING?"
else
  puts greeting
end