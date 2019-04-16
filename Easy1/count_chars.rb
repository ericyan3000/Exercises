def prompt(msg) 
  puts("=> #{msg}")
end

def get_num_of_chars(str)
  char_arr = []
  str.chars.each do |char|
    unless char_arr.include?(char)
      char_arr.push(char)
    end
  end
  p char_arr
  char_arr.size()
end


prompt("Please write word or multiple words:")
input = gets.chomp

prompt("There are #{get_num_of_chars(input)} characters in \"#{input}\".")