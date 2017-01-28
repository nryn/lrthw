def inventory(beer_tot, crisp_bags, pot_plants)
  puts """
  #{beer_tot} beers is plenty.
  But we're going to need more than #{crisp_bags} bags of crisps.
  Also we have #{pot_plants} potted plants for decoration.
  """
end

asahi = 13
carlsberg = 3
budweiser = 5

all_beers = asahi + carlsberg + budweiser

inventory(all_beers, 100, 3)
inventory(1, 1, 1)
inventory(12 - 3, 60 % 9, 111 + 3)
inventory(budweiser, carlsberg, asahi)
inventory(asahi * 9, 4 - carlsberg, 50)
inventory(0, -3 + 4, 1)
inventory(7, "3".to_i, 9001)
inventory(0.3 * 5.6, 1020, 8.9 + 4)
inventory("Crying in to all these","these bloody","to burn the")
inventory(inventory(1,2,3),5,6)
