# define function which takes two arguments
def cheese_and_crackers(cheese_count, boxes_of_crackers)
# four lines which puts strings including interpolations of the arguments
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
  # ending the function definition
end

# calling the function with two arguments
puts "We can just give the function numbers directly:"
cheese_and_crackers(20,30)


puts "OR, re can use variables from our script:"
# declaring 2 variables with values of integers
amount_of_cheese = 10
amount_of_crackers = 50
# calling function with the variables as the arguments
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
# passing inline arithmetic on integers as arguments to a function while calling it
cheese_and_crackers(10 + 20, 5 + 6)

# passing inline arithmetic on variables as arguments to a function while calling it
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
