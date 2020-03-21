def game
    puts "Welcome" 
    print "What's your name? "
    name = gets
    puts "Hello " + name + "Please select a difficulty"
  
    puts "0 for Easier - 1 for Easy - 2 for Medium - 3 for Hard - 4 for Harder"
    chosen_difficulty = gets
    if chosen_difficulty.to_i == 0
      puts "You selected Easier"
      easierGame()
    elsif chosen_difficulty.to_i == 1
      puts "You selected Easy"
      easyGame()
    elsif chosen_difficulty.to_i == 2
      puts "You selected Medium"
      mediumGame()
    elsif chosen_difficulty.to_i == 3
      puts "You selected Hard"
      hardGame()
    elsif chosen_difficulty.to_i == 4
      puts "You selected Harder"
      harderGame()
    end
  end
  
  def easierGame
    secret_number = rand(1...10)
    print secret_number
    guess = 1000
    guess_count = 0
  
    while guess != secret_number
      puts "Enter guess: "
      guess = gets.to_i
        if guess < secret_number
          puts "Guess higher!"
        elsif guess > secret_number
          puts "Guess lower!"
        end
      guess_count += 1
      puts "You have guessed " + guess_count.to_s + " times."
    end
  
    if guess == secret_number
      puts "Success! You won!"
    end
  
    play_again()
  end
  
  def easyGame
    secret_number = rand(1...10)
    print secret_number
    guess = 1000
    guess_count = 0
    guess_limit = 5
    out_of_guesses = false
  
    while guess != secret_number and !out_of_guesses
      if guess_count != guess_limit
        puts "Enter guess: "
        guess = gets.to_i
          if guess < secret_number
            puts "Guess higher!"
          elsif guess > secret_number
            puts "Guess lower!"
          end
        guess_count += 1
      else
        out_of_guesses = true
      end
    end
  
    if out_of_guesses
      puts "Oh oh, you lost!"
    else
      puts "Success! You won!"
    end
  
    play_again()
  end
  
  def mediumGame
    secret_number = rand(1...100)
    # print secret_number
    guess = 1000
    guess_count = 0
    guess_limit = 6
    out_of_guesses = false
  
    while guess != secret_number and !out_of_guesses
      if guess_count != guess_limit
        puts "Enter guess: "
        guess = gets.to_i
          if guess < secret_number
            puts "Guess higher!"
          elsif guess > secret_number
            puts "Guess lower!"
          end
        guess_count += 1
      else
        out_of_guesses = true
      end
    end
  
    if out_of_guesses
      puts "Oh oh, you lost!"
    else
      puts "Success! You won!"
    end
  
    play_again()
  end
  
  def hardGame
    secret_number = rand(1...500)
    # print secret_number
    guess = 1000
    guess_count = 0
    guess_limit = 8
    out_of_guesses = false
  
    while guess != secret_number and !out_of_guesses
      if guess_count != guess_limit
        puts "Enter guess: "
        guess = gets.to_i
          if guess < secret_number
            puts "Guess higher!"
          elsif guess > secret_number
            puts "Guess lower!"
          end
        guess_count += 1
      else
        out_of_guesses = true
      end
    end
  
    if out_of_guesses
      puts "Oh oh, you lost!"
    else
      puts "Success! You won!"
    end
  
    play_again()
  end
  
  def harderGame
    secret_number = rand(1...1000)
    # print secret_number
    guess = 1000
    guess_count = 0
    guess_limit = 9
    out_of_guesses = false
  
    while guess != secret_number and !out_of_guesses
      if guess_count != guess_limit
        puts "Enter guess: "
        guess = gets.to_i
          if guess < secret_number
            puts "Guess higher!"
          elsif guess > secret_number
            puts "Guess lower!"
          end
        guess_count += 1
      else
        out_of_guesses = true
      end
    end
  
    if out_of_guesses
      puts "Oh oh, you lost!"
    else
      puts "Success! You won!"
    end
  
    play_again()
  end
  
  
  def play_again()
    puts "Would you like to play again? [Y/N]"
    answer = gets.chomp
      if answer == "Y"
        # SELECT DIFFICULTY
        puts "Select a difficulty " + "0 for Easier - 1 for Easy - 2 for Medium - 3 for Hard - 4 for Harder"
  
        chosen_difficulty = gets
  
        if chosen_difficulty.to_i == 0
          puts "You selected Easier"
          easierGame()
        elsif chosen_difficulty.to_i == 1
          puts "You selected Easy"
          easyGame()
        elsif chosen_difficulty.to_i == 2
          puts "You selected Medium"
          mediumGame()
        elsif chosen_difficulty.to_i == 3
          puts "You selected Hard"
          hardGame()
        elsif chosen_difficulty.to_i == 4
          puts "You selected Harder"
          harderGame()
        end
      elsif answer == "N"
        puts "Program exiting. Thank you."
      end
  end
  
  game()