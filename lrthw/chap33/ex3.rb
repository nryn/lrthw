arg = ARGV[0].to_i

def func(x)
  i = 0
  numbers = []
  while i < x
    numbers.push(i)
    i += 1
  end
  numbers.each {|num| puts num }
end

func(arg)
