def title_case(title, minor_words = '')
  title.capitalize.split().map {|a| 
  	p a
  	minor_words.downcase.split().include?(a) ? a : a.capitalize
  }.join(' ')
end

p title_case('A LION king of MY heart', 'my')