arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}

arr.each {|ele|
	hsh[ele[0]] = ele[1]
}

p hsh.inspect