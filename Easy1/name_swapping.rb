def swap_name(str)
  first_name = str.split[0]
  last_name = str.split[1]
  "#{last_name}, #{first_name}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'