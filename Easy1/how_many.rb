def count_occurrences(array)
	counts = {}
  array.map! {|x| x.downcase}
	array.each do |x|
		##
    #if counts.has_key?(x)
    #  counts[x] += 1
    #else
    #  counts[x] = 1
    #end
    x = x.downcase
    counts[x] = array.count(x) unless counts.has_key?(x)

  end
  counts.each do |key, value|
    puts "#{key} => #{value}"
  end
end


vehicles = ['Car', 'CAR', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)