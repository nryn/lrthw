requestedfile = ARGV.first

the_file = open(requestedfile)

print the_file.read

the_file.close
