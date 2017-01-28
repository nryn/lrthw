people = 50
cars = 70
trucks = 79

if cars < people && trucks < cars
  puts "Let's take the trucks"
elsif cars > people && trucks > cars
  puts "Let's take the cars."
end

if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's stay home then."
end
