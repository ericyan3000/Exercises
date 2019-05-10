original = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

p original.map {|el1|
	el1.transform_values {|val1|
		val1 += 1
	}
}

p original
