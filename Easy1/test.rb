array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array3 = array1
0.upto(array3.size) do |x| 
  temp = array3[x]
  array2[x] = temp.clone
end
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

puts array1[1].object_id
puts array2[1].object_id
puts array3[1].object_id