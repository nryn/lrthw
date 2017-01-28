def add(a, b)
  puts "ADDING #{a} + #{b}"
  a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  a / b
end


puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"


# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"

# Formula

# a + (b - (c * (d/e)))
# 35 + (74 - (180 * (50 / 2)))

# Now the inverse - writing a Formula

# a / (b - (c * (d - (e * f)))

# and calling it as a function

puts "Let's make one of our own."

puzzle_2 = divide(age, subtract(height, multiply(weight, subtract(iq, multiply(iq, weight)))))

puts "The answer to puzzle_2 is #{puzzle_2}"
