def count_occurrences(array)
	counts = {}
	array.each do |x|
		##
    #if counts.has_key?(x)
    #  counts[x] += 1
    #else
    #  counts[x] = 1
    #end
    counts[x] = array.count(x)

  end
  counts.each do |key, value|
    puts "#{key} => #{value}"
  end
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)