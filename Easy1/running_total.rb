def running_total(arr)
  result_arr = []
  sum = 0
  arr.each_with_index do |x,idx|
    result_arr[idx] = sum + x
    sum = result_arr[idx]
  end
  result_arr
end


puts running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []