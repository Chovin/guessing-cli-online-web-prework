def run_guessing_game
  puts "Guess a number between 1 and 6."
  number = rand(1..6)
  
  loop do
    guess = gets.chomp
    return puts "Goodbye!" if guess == "exit"
    puts "You guessed the correct number!" if guess.to_i == number
    correct = guess.to_i == number
  
    comp = rand(1..6)
    puts "The computer guessed #{comp}."
    correct ||= comp == number
    if correct
      puts "It was correct! Picking a new random number."
      number = rand(1..6)
    end
  end
end