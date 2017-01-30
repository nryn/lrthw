# using for loops and range operator

arg = ARGV[0]

def func(limiter)
  i = 0
  j = limiter
  numbers = []
  (i..j).each do |i|
    numbers.push(i)
  end
  numbers.each {|num| puts num }
end

func(arg.to_i)
