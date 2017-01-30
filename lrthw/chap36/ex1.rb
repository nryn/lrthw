# WELCOME TO THE NEW IMPROVED SPOOKY GAME! (thought chap31 has better presentation in Terminal)

# make rooms, beginning, death and ending
# make weapons, enemies, and items
# make room options
# make exits and deaths
# call the beginning function to begin


def beginning
  # weapons and items
  $water = 0
  $dagger = 0
  $sword = 0
  # room states
  $orange_room_complete = false
  $extinguished = false
  $minotaur_defeated = false

  puts "You're standing outisde a mansion and somewhere inside there's a big bag of gold."
  puts "Ready to go and get it? Hit return to continue."
  $stdin.gets
  reception_blue_room
end

def reception_blue_room
  puts "You're in the blue room."
  if $water == 0
    puts "To your left there's a bucket of water by a door, and to your right a bureau near another door."
  end
  if $water == 1
    puts "To your left there's a door, and to your right a bureau near another door."
  end
  puts "Do you: "
  puts "Go through the left door?"
    if $water == 0
      puts "Pick up the bucket of water?"
    end
  puts "Go through the right door?"
  puts "Open the bureau?"

  choice = $stdin.gets.chomp
  if choice.downcase.include? "left"
    puts "You go through the door on the left."
    yellow_room
  elsif (choice.downcase.include? "bucket") || (choice.downcase.include? "water")
    if $water == 0
      $water = 1
      puts "You pick up the water."
      reception_blue_room
    else
      puts "You already have the bucket of water."
      reception_blue_room
    end
  elsif choice.downcase.include? "right"
    puts "You go through the door on the right."
    red_room
  elsif choice.downcase.include? "bureau"
    if $dagger == 0
      $dagger = 1
      puts "Inside the bureau is a dagger. You pick it up."
      reception_blue_room
    else
      puts "The bureau is empty."
      reception_blue_room
    end
  else
    puts "That's not an option. Try again!"
    reception_blue_room
  end
end

def red_room
  puts "You're in the red room."
  puts "You're face to face with a minotaur!"
  puts "Do you: "
  if $dagger == 1
    puts "Use the dagger."
  end
  puts "Try to get around it."
  if $water == 1
    puts "Splash it with the water"
  end
  if $sword == 1
    puts "Use the sword."
  end
  puts "Run back the way you came!"

  choice = $stdin.gets.chomp

  if (choice.downcase.include? "dagger") && ($dagger == 1)
    puts "The minotaur is dead."
    puts "The dagger is stuck, embedded in its chest. You must leave it behind."
    $dagger = 0
    $minotaur_defeated = true
    red_room_no_minotaur
  elsif (choice.downcase.include? "sword") && ($sword == 1)
    puts "The minotaur is dead."
    puts "The sword is stuck, embedded in its chest. You must leave it behind."
    $sword = 0
    $minotaur_defeated = true
    red_room_no_minotaur
  elsif choice.downcase.include? "run back"
    puts "You run back to the blue room."
    reception_blue_room
  else
    puts "The minotaur destroys you."
    death
  end
end

def red_room_no_minotaur
  puts "You're in the red room with the dead minotaur."
  puts "There is a corridor off to the left and a black door."
  puts "There is also the door that goes back to the blue room."
  puts "Which do you go through?"

  choice = $stdin.gets.chomp

  if choice.downcase.include? "corridor"
    puts "You walk down the corridor."
    fire_corridor("red")
  elsif choice.downcase.include? "black"
    puts "You take the black door."
    black_room
  elsif choice.downcase.include? "blue"
    puts "You take the door back to the blue room."
    reception_blue_room
  else
    puts "You couldn't do that."
    red_room_no_minotaur
  end
end

def yellow_room
  puts "It's a small yellow room, with a large arch on the other side."
  if $sword == 0
    puts "There's an antique sword in a cabinet on the wall."
    puts "Do you pick up the sword first?"
  end
  puts "Do you go through the arch?"
  puts "Or do you go back to the blue room?"

  choice = $stdin.gets.chomp

  if choice.downcase.include? "sword"
    puts "You pick up the sword and head under the arch."
    $sword = 1
    orange_room
  elsif (choice.downcase.include? "blue") || (choice.downcase.include? "back")
    puts "You go back to the blue room."
    reception_blue_room
  elsif choice.downcase.include? "arch"
    puts "You walk straight through the room, under the arch."
    orange_room
  else
    puts "You couldn't do that."
    yellow_room
  end
end

def orange_room
  puts "You're in the orange room."
  puts "There's a corridor, and an arch."
  if $orange_room_complete == false
    puts "However a spooky skeleton blocks your path wherever you move."
    puts "\"Riddle me this: Feed me and I live, yet give me water and I die\""
    puts "The skeleton looks pretty serious. What's your response?"

    riddle_answer = $stdin.gets.chomp

    if riddle_answer.downcase.include? "fire"
      puts "\"That's correct\" said the skeleton. The bones disintegrate before your very eyes."
      $orange_room_complete == true
    else
      puts "The skeleton destroys you. Sorry."
      death
    end
  end
  puts "Do you go through the arch to the yellow room, or through the doorway?"

  choice = $stdin.gets.chomp

  if choice.downcase.include? "doorway"
    puts "You go through the doorway to a corridor."
    fire_corridor("orange")
  elsif (choice.downcase.include? "arch") || (choice.downcase.include? "yellow")
    puts "You go under the arch."
    yellow_room
  end
end

def fire_corridor(entrance)
  puts "You're in a long corridor"
  if $extinguished == true
    puts "Do you continue through the wet, smoky corridor?"
    choice = $stdin.gets.chomp
    if (choice.downcase.include? "yes") || (choice.downcase.include? "y")
      if entrance == "orange"
        $minotaur_defeated == true ? red_room_no_minotaur : red_room
      else
        orange_room
      end
    elsif (choice.downcase.include? "no") || (choice.downcase.include? "n")
      entrance == "red" ? red_room_no_minotaur : orange_room
    else
      puts "This is a yes/no question. Try again."
      fire_corridor(entrance)
    end
  else
    puts "As you walk down the corridor, fire springs up from every angle!"
    if $water == 1
      puts "You use your bucket of water to put it out. Lucky you had that!"
      $extinguished = true
      fire_corridor(entrance)
    else
      puts "The fire engulfs you. You didn't make it out alive. If only you had something to extinguish it."
      death
    end
  end
end

def black_room
  puts "You're faced by a giant dragon, guarding the big bag of gold."
  puts "Do you: "
  if $sword == 1
    puts "Use the sword."
  end
  if $dagger == 1
    puts "Use the dagger."
  end
  puts "Go back to the red room."
  puts "Run around the dragon."

  choice = $stdin.gets.chomp

  if choice.downcase.include? "sword"
    puts "You slay the dragon and steal its money!"
    ending
  else
    puts "The dragon catches you."
    death
  end
end

def ending
  puts "congrats"
  puts "Thanks for playing. Seeya."
  exit(0)
end

def death
  puts "You dead. Enter 'Y' to try again."

  continue = $stdin.gets.chomp

  if continue.downcase == "y"
    beginning
  else
    puts "Thanks for playing. Seeya."
    exit(0)
  end
end

beginning
