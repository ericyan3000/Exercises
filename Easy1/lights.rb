def lights(n)
  # create an array of n elements of 0
  light_arr = Array.new(n, 0)
  result_arr = []

  # iterate from 1 through n, add 1 to the element if index is divisible by counter
  1.upto(n).each do |i|
    light_arr = flip_switch(light_arr, i)
  end
  light_arr.each_with_index {|light, i| 
    result_arr << i+1 if light.odd?
  }
  result_arr
end

def flip_switch(arr, counter)
  new_arr = arr.dup
  arr.each_with_index {|light,i|
    new_arr[i] += 1 if (i+1) % counter == 0
  }
  new_arr
end

p lights(5)
p lights(5) == [1,4]
p lights(10) == [1, 4, 9] 