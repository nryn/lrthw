BEGIN { puts "\"firing up!\"" }
END { puts "\vwinding \vdown!\\\\" }

def function_a(x)
  puts "function_a is alive! #{x}!!!!"
end

def function_b
  puts "function_b r00lz."
  defined? self == "self"
end

alias alias_a function_a

puts "ready" and "to rock"

def function_c(); puts "function_c is it!" end

i=[1, 3, "spooky", function_c, 3, "5", true]

while true
  n = i[0]
  n += 100.0
  n /= 8
  n = n % 11
  i.push(n)
  break
end

puts "#{i[-1]}"

unless defined? Function == "function_a" then function_b ; alias_a("he \nhe \rhe"); (0..4).each {|p| print "#{p}, "}
end

function_c
