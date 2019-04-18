def time_of_day(ori_min)
  time = ''
  hour = get_hour(ori_min)
  min = get_min(ori_min)
  time = get_time(hour, min)
end

def get_time(hour, min)
  time = hour + ":" + min
end

def get_hour(min)
  hour = min.to_i / 60
  hour %= 24
  hour = "%02d" % hour
end

def get_min(min)
  min = min.to_i % 60
  min = "%02d" % min
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"