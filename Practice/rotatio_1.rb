/
- input: string
- output: new string
- rule: move first character to the end
        original string not changed (create copy first)

- data structure: array
- algorithm
  - return array[1..-1] + [array[0]]
  or - shift first element 
     - push it back to the arr

- algotithm(string)
  - split string into array of char
  - call rotate_array on the array, then join()

/




def rotate_array (arr) 
  arr1 = arr.dup
  temp = arr1.shift
  arr1.push(temp)
end

def rotate_string(str)
  rotate_array(str.chars()).join()
end

def rotate_integer(int)
  digits = int.to_s.chars()
  rotate_array(digits).join.to_i
end


p rotate_integer(123) == 231
p rotate_integer(0) == 0