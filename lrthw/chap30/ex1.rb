# declaring 3 variables as integers
people = 30
cars = 40
trucks = 15

# if statement comparing two variables
if cars > people
  # executes if there's more people than cars
  puts "We should take the cars."
elsif cars > people
  # executes if the above condition is not met and there's more cars than people. does not execute if the above condition is met, regardless of this condition being met.
  puts "We should not take the cars."
else
  # will execute when neither of the two above conditions are met
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
