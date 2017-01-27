#     variable assignments
# assigns cars variable equal to 100 (integer)
cars = 100
# assigns space_in_a_car variable equal to 4.0 (floating point)
space_in_a_car = 4.0
# assigns drivers variable equal to 30 (integer)
drivers = 30
# assigns passengers variable equal to 90 (integer)
passengers = 90
# assigns cars_not_driven variable equal to the result of subtracting the value held by the cars variable from the value held by the drivers variable
cars_not_driven = cars - drivers
# assigns the cars_driven variable equal to the value held by the drivers variable.
cars_driven = drivers
# assigns the carpool_capacity variable equal to the multiple of the values held by the cars_driven variable and the space_in_a_car variable
carpool_capacity = cars_driven * space_in_a_car
# assigns the average_passengers_per_car variable equal to the result of dividing the value held by the passengers variable by the cars_driven variable
average_passengers_per_car = passengers / cars_driven


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
