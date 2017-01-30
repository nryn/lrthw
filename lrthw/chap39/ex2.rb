post_code_areas = {
  'West Central London' => 'WC',
  'West End' => 'W1',
  'East Central London' => 'EC',
  'East London' => 'E',
  'North London' => 'N',
  'South East' => 'SE'
}

tube_stations = {
  'W1' => 'Green Park',
  'WC' => 'Covent Garden',
  'N' => 'Angel'
}

# add some more
tube_stations['SE'] = 'New Cross'
tube_stations['E'] = 'Whitechapel'
tube_stations['EC'] = 'Bank'

puts '-' * 10
puts "East London has: #{tube_stations['E']}"
puts "West Central London has: #{tube_stations['WC']}"

puts '-' * 10
puts "North London's Post Code is: #{post_code_areas['North London']}"
puts "The West End's Post Code is: #{post_code_areas['West End']}"
10.times { print '-' }
print "\n"
puts "East London has: #{tube_stations[post_code_areas['East London']]}"
puts "South East London has: #{tube_stations[post_code_areas['South East']]}"

# puts every post code
puts '-' *  10
post_code_areas.each { |area, pc| puts "#{area}'s Post Code is #{pc}" }

# every tube station
puts '-' * 10
tube_stations.each { |pc, tube| puts "#{pc} has the station #{tube}" }

# both
puts '-' * 10
post_code_areas.each { |a, pc|
  tube = tube_stations[pc]
  puts "#{a}'s Post Code is #{pc} and the tube station is #{tube}"
}
