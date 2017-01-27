# puts a string
puts "Mary had a little lamb."
# puts a string which includes inline string interpolation of another inline string.
puts "Its fleece was white as #{'snow'}."
# puts a string
puts "And everywhere that Mary went."
# puts a string 10 times
puts "." * 10 # what'd that do?

# the next 12 lines each assign a string value to a new variable
end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e"
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

# watch that print vs. puts on this line what's it do?
# a single print of 6 strings, concatenated
print end1 + end2 + end3 + end4 + end5 + end6
# a single puts of 6 strings, concatenated
puts end7 + end8 + end9 + end10 + end11 + end12
