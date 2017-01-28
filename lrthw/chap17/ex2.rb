from_file, to_file = ARGV ; File.open(to_file, 'w') do |x| x.write(File.open(from_file).read) end
