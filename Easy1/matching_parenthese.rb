def balanced?(str)
	parenthese_arr = str.gsub(/[^\(|\)]/,'').split()
	forward_arr = parenthese_arr.each_with_index.map { |e, i| i if e == '('}
	reverse_arr = parenthese_arr.each_with_index.map { |e, i| i if e == ')'}
	forward_arr.reverse.each 
end


balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false