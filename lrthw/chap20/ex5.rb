# declares a variable to be the value of the first argument passed in from the command line
input_file = ARGV.first

# define a function which takes one argument
def print_all(f)
# print the result of reading the object passed in to the function, as a string.
  puts f.read
end

# define another function that takes one argument
def rewind(f)
  # use the seek method on the object passed in as the argument in the function
  f.seek(0)
end

# define a function that takes two arguments
def print_a_line(line_count, f)
  # puts a string made up of two string interpolations, one a variable and the other the result of calling some methods on another varible
  puts "#{line_count}, #{f.gets.chomp}"
end

# declares a varible to be the open method being called on another variable
current_file = open(input_file)

puts "First let's print the whole file:\n"

# calls a function using a varible as an argument
print_all(current_file)

puts "Now let's rewind kind of like a tape."
# calls a function using a variable as an argument
rewind(current_file)

puts "Let's print three lines:"
# declaring a variable with an integer value
current_line = 1
# calling a function with two variable arguments
print_a_line(current_line, current_file)

# redeclaring a variable and incrementing its value
current_line += 1 # current_line now == 2
# calling the function as before but the value of the variable will have changed
print_a_line(current_line, current_file) # print_a_line function's first argument is interpreted as the value of the function's local line_count variable

current_line += 1 # current_line now == 3
print_a_line(current_line, current_file)
