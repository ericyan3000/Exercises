def center_of(str)
  middle = str.length / 2.0
  start = middle.ceil - 1
  last = middle.floor
  str.slice(start..last)
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'