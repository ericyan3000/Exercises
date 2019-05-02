def merge(arr1, arr2)
  result = []
  while arr1.size > 0 or arr2.size > 0
    if arr1.size == 0
      result.push(arr2.shift)
    elsif arr2.size ==0 or arr1[0] < arr2[0] 
      result.push(arr1.shift)
    else
      result.push(arr2.shift)
    end
  end
  result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]