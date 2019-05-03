def merge1(arr1, arr2)
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

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

def merge_sort(arr1)
  # edge case
  if arr1.size <= 1
    return arr1
  else
    arr1_1 = arr1[0..arr1.size/2-1]
    arr1_2 = arr1[arr1.size/2..-1]
    return merge(merge_sort(arr1_1), merge_sort(arr1_2)) 
  end
end



  # recursive call


p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]