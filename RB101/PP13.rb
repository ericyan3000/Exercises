arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

p arr.sort_by {|arr1|
	arr1.select {|ele|
		ele.odd?
	}
}