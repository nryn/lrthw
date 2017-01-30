class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line }
  end
end

we_let_the_stars_go = ["There was a girl I used to know", "She'd tease me about my name", "Fan the embers long enough", "I sometimes catch her flame"]

prefab = Song.new(we_let_the_stars_go)

prefab.sing_me_a_song
