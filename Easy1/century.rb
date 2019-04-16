def century(year)
  century_num = (year.to_f / 100).ceil.to_i
  last_digit = century_num.digits.shift.to_i
  sufix = case last_digit
          when 1 
            "st" 
          when 2 
            "nd"
          when 3
            "rd"
          else "th"
          end
  sufix = 'th' if [11,12,13].include?(century_num % 100)
  century_num.to_s + sufix
end


puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'