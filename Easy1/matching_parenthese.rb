def balanced?(str)
	parenthese_arr = str.gsub(/[^\(|\)]/,'').chars
  forward_arr = []
  reverse_arr = []
  parenthese_arr.each_with_index { |e, i| 
    forward_arr << i if e == '('
    reverse_arr << i if e == ')'
  }

  return false unless forward_arr.size == reverse_arr.size
  forward_arr.reverse_each do |x|
    index = 0
    while reverse_arr.size > 0
      return false if index >= reverse_arr.size
      if reverse_arr[index] < x
        index += 1
        next
      elsif reverse_arr[index] > x
        reverse_arr.delete_at(index)
        break
      end
    end
  end
  return true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false