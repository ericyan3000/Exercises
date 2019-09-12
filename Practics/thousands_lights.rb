=begin

input: n (number of lights)
output: array (light that's on)
rule: 1. iterate the nth element array n times
      2. flip every nth switch in each nth iteration
      3. return index of the 'on' switch

data structre: array

algorithm: 1. create and iterate the array n.times
           2. map.with_index the array each time to turn every nth switch
            a. if the index i is divisible by n (i+1) % n == 0, 
              i. arr[i] = (arr[i] - 1).abs
            b. assign the returned array to original array
           3. select index from array whose value is 1, select.with_index
    
=end

def light_switch(n)
  lights = []
  lights_final = []

  n.times { |_| lights << 0 }
  n.times do |s|
    temp_light = lights.map.with_index {|value, index| (index+1) % (s+1) == 0 ? (value - 1).abs : value }
    lights = temp_light
  end
  
  lights.each_with_index {|v, i| lights_final << i+1 if v == 1 }
  lights_final
end

p light_switch(0) == []
p light_switch(5) == [1, 4]
p light_switch(10) == [1, 4, 9]
p light_switch(10000)
