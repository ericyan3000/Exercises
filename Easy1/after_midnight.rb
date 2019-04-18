MINUTES_PER_DAY = 60 * 24

def after_midnight(time)
  hours, minutes = time.split(":")
  total_minutes = hours.to_i * 60 + minutes.to_i
  total_minutes % MINUTES_PER_DAY
end

def before_midnight(str)
  total_minutes = MINUTES_PER_DAY - after_midnight(str)
  total_minutes % MINUTES_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0