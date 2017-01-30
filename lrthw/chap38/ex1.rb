ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "What there are not 10 things in that list. Let's fix that."

# call split on ten_things
stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items

# call length on stuff
while stuff.length != 10
  # call pop on more_stuff
  next_one = more_stuff.pop
  puts "Adding #{next_one}"
  # call push on stuff with the argument of next_one
  stuff.push(next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")
