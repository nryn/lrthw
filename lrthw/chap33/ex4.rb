arg1, arg2 = ARGV

def func(limiter, incrementor)
  i = 0
  numbers = []
  while i <= limiter
    numbers.push(i)
    i += incrementor
  end
  puts "Your #{incrementor} times table 'til #{limiter}: "
  numbers.each {|num| puts num }
end

func(arg1.to_i, arg2.to_i)
