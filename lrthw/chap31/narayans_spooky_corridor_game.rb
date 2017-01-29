# Setup
system('clear')
spacer = "\n==========\n\n"
prompt = "\n> "
initiallifecount = 4
lifecount = initiallifecount
continue_message = "#{spacer}Hit return to respawn."
game_over_message = "\n#{spacer}Game over.\n\nHit return to exit."

# Intro screen
puts spacer
puts "Press return to begin."
puts spacer
startgame = $stdin.gets
system('clear')

# Game screen
puts spacer
while lifecount > 0 do
  lifecountdisplay = "Lives remaining: #{lifecount}\n\n"
  if lifecount == initiallifecount
    puts lifecountdisplay
    puts "Welcome.\n\n"
    puts "You enter an infinitely long corridor."
    puts "There are numbered doors all the way down."
    puts "Even numbers on the left, odd on the right."
  elsif lifecount != initiallifecount
    system('clear')
    puts spacer
    puts lifecountdisplay
    puts "You've lost a life.\nYou're back in the corridor."
  end
  puts "Which door number do you decide to enter?"
  print prompt
  door = $stdin.gets.chomp.to_i

  if door > 100000 || door < -100000
    system('clear')
    puts spacer
    puts lifecountdisplay
    puts "You begin your journey, but the door is so far away. You die of starvation en route."
    lifecount -= 1
    if lifecount > 0
      puts continue_message
      continue = gets
    else
      puts game_over_message
      continue = gets
    end
  elsif door == 0
    system('clear')
    puts spacer
    puts lifecountdisplay
    puts "For thinking outside the box, you are struck down by the Gods. Your insolence has been noted. They want numbers."
    lifecount -= 1
    if lifecount > 0
      puts continue_message
      continue = gets
    else
      puts game_over_message
      continue = gets
    end
  elsif door < 0
    system('clear')
    puts spacer
    puts "You turn around."
    if door % 2.0 == 0
      puts "The even numbers are now on the right."
      puts "You walk down and turn right in to the door."
      puts "You face The Gods."
      puts "What do you do?"
      print prompt
      action = $stdin.gets.chomp.to_i
      if action == 0
        system('clear')
        puts spacer
        puts "The Gods saw that one coming. You're immediately crushed by the emotional weight of the sum of your own sins."
        lifecount -= 1
        if lifecount > 0
          puts continue_message
          continue = gets
        else
          puts game_over_message
          continue = gets
        end
      elsif action.is_a? Fixnum
        system('clear')
        puts spacer
        puts "The Gods cannot comprehend such an action. \nYou ascend to beyond their level and slay them as cattle after having them beg for mercy."
        puts "You assume their place and consciousness."
        puts "You've beaten the game.\n\n"
        puts "You decide to use your power to end all suffering the universe, by ending the universe itself."
        puts "The only way to do this is to destroy yourself."
        puts "You do this instantaneously quickly after becoming The God, since your Godly experience in that instant was infinite."
        puts "It was enough."
        puts "Rest in Peace."
        puts spacer
        lifecount = "Infinite."
        puts lifecountdisplay
        puts spacer
      end
    else
      system('clear')
      puts spacer
      puts "The odd numbers are now on the left, you walk down and turn left in to the door."
      puts "You fall upwards and your body is obliterated by strong gravitational forces."
      lifecount -= 1
      if lifecount > 0
        puts continue_message
        continue = gets
      else
        puts game_over_message
        continue = gets
      end
    end
  elsif door % 2.0 == 0
    system('clear')
    puts spacer
    puts "Your journey begins, and you turn left in to your door."
    puts "As you step through the door, The Gods instantly freeze you to death with temperatures below absolute zero."
    puts "That's what you get for being too positive."
    lifecount -= 1
    if lifecount > 0
      puts continue_message
      continue = gets
    else
      puts game_over_message
      continue = gets
    end
  elsif door % 2.0 != 0
    system('clear')
    puts spacer
    puts "Your journey begins, and you turn right in to your door."
    puts "You step through the door and fall in to a firey pit. The Gods thought your choice was a bit odd."
    lifecount -= 1
    if lifecount > 0
      puts continue_message
      continue = gets
    else
      puts game_over_message
      continue = gets
    end
  else
    system('clear')
    puts spacer
    puts "You instantly beat the game."
    lifecount = "???"
    puts lifecountdisplay
  end
end
system('clear')
puts spacer
puts "You are dead."
puts "The end.\n\n"
