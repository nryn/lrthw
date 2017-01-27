# assigning a variable's value to integer
types_of_people = 10
# assigning variable to be a string with Ruby computation, adding an variable which points to an integer (type converted) in to the string.
x = "There are #{types_of_people} types of people."
# assigning a variable's value to a string
binary = "binary"
# ditto
do_not = "don't"
# assigning a variable's value to a string with Ruby computation injecting two variables (both pointing to strings) within the string.
y = "Those who know #{binary} and those who #{do_not}."
# puts the value of variable x
puts x
# ditto variable y
puts y
# puts a string with string interpolation, injecting the value of a variable (happens to be a string)
puts "I said: #{x}."
# ditto
puts "I also said: '#{y}'."
# assigning the value of a variable to be a boolean (true/false)
hilarious = false
# assigns variable's value to be a string which injects the value of another variable inside (value happens to be a boolean, type converted to string for the purposes of string interpolation)
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"
# puts the value of a variable
puts joke_evaluation
# assigns
w = "This is the left side of..."
e = "a string with a right side."
# puts the result of adding two variables together. in this case, both are strings, so the strings are concatenated.
puts w + e
