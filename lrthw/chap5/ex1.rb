name = 'Zed A. Shaw'
age = 35 # not a lie in 2009
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
inch_to_cm_converter = 2.54
pounds_to_kilo_converter = 0.45359237

puts "Let's talk about #{name}."
puts "He's #{height} inches tall. (That's about #{(height * inch_to_cm_converter).round} centimetres.)"
puts "He's #{weight} pounds heavy. (That's about #{(weight * pounds_to_kilo_converter).round} kilograms.)"
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

# this line is tricky, try to get it exactly right
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."
