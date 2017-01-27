name, age, height, favespacecraft = ARGV

puts "Your name is: #{name}"
puts "Your age is: #{age}"
puts "You are #{height} tall"
puts "Your favourite spacecraft is: #{favespacecraft}"

print "But what is your favourite colour?"
color = $stdin.gets.chomp

puts "Wasn't #{favespacecraft} an off-#{color} colour?"
