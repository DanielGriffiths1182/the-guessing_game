def number_game
  user_number = ""
  counter = 0
  com_number = rand(1..100)
  while user_number != com_number
    puts "Can you guess my number, its between 1 and 10 and you have 5 turns."
    user_number = gets.chomp.to_i
    if user_number != ""
      counter += 1
    end
    if user_number > 100
      puts "To high."
    elsif user_number < 1
      puts "To low."
    end
    if user_number > com_number + 25 && user_number <= com_number + 50
      puts "Your on the high side."
    end
    if user_number > com_number + 50
      puts "Your guess was significantly high."
    end
    if user_number < com_number - 25 && user_number >= com_number - 50
      puts "Your on the low side."
    end
    if user_number < com_number - 50
      puts "Your guess was significantly low."
    end
    if user_number < com_number + 10 && user_number > com_number || user_number > com_number - 10 && user_number < com_number
      puts "Your making me feel anxious, close guess!"
    end
    break if counter == 15
  end
  if user_number == com_number
    puts "YOU WIN!!"
  end
  if user_number != com_number
    puts "YOU LOSE! HAHA"
  end
  puts "#{com_number} was the number!"
  puts "You took #{counter} turn(s)"
  puts "Game over!"
end

number_game
