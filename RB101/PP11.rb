arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = []
arr.select() {|arr1|
	new_arr << arr1.select {|ele|
		ele % 3 == 0
	}
}

p new_arr