def fizzbuzz(start_num, end_num)
  result_str = (start_num..end_num).map { |i|
    if i % 15 == 0
      "FizzBuzz"
    elsif i % 5 == 0
      "Buzz"
    elsif i % 3 == 0
      "Fizz"
    else
      i
    end
  }.join(", ")
  p result_str
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz