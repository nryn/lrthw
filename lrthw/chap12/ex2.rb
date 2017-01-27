returnpercentage = 10

# one option...

print "How much USD are you going to give me? "
usd = gets.chomp

total = usd.to_f

puts "Thanks, so you've given me #{total} and in return I'll give you #{returnpercentage}%. That's #{(total/100)*returnpercentage} change back to you."
