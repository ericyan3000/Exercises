arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

p arr.select {|hsh|
	hsh.all? {|_, arr1|
		arr1.all? {|val| val.even?}
	}
}

