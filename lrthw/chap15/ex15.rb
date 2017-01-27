# sets the value of a variable to whatever is passed as the first argument from the command line
filename = ARGV.first
# sets the value of a variable to the result of opening a file stored by the variable declared just previously
txt = open(filename)
# puts a string which also interpolates the filename
puts "Here's your file #{filename}:"

# prints out the result of reading the value returned by the txt variable, which itself stores a function to open a file
print txt.read

# prints a string
print "Type the filename again: "

# takes string from user input and stores in variable
file_again = $stdin.gets.chomp

# sets the value of a variable to the result of opening a file stored by the variable declared just previously
 txt_again = open(file_again)

# prints out the result of reading the value returned by the txt_again variable, which itself stores a function to open a file path
 print txt_again.read

txt_again.close
txt.close
