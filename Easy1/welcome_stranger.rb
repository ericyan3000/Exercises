def greetings(name_arr, job_hash)
  pp_name = name_arr.join(" ")
  job = job_hash[:title] + " " + job_hash[:occupation]
  puts("Hello, #{pp_name}! Nice to have a #{job} around.")
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })