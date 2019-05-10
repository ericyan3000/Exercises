hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

result = []
hsh.each_value {|val|
	if val[:type] == 'fruit'
		result << val[:colors].map {|ele| ele.capitalize}
	elsif val[:type] == 'vegetable'
		result << val[:size].upcase
	end
}
p result.inspect