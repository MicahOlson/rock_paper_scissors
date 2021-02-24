#!/usr/bin/env ruby
require("./lib/rock_paper")

game = RPS.new()
puts "
==============================================
Welcome to Rock Paper Scissors! 
The rules are:
  Rock beats Scissors
  Scissors beats Paper
  Paper beats Rock

  First person to win 5 points

Enter rock, paper, or scissors below to start."
player_score = 0
computer_score = 0

until (player_score == 5 || computer_score == 5)
  choices = ['rock', 'paper', 'scissors']
  puts "==============================================="
  player_input = gets.chomp
  while (!choices.include?(player_input))
    puts "Incorrect input! Please type rock, paper, or scissors."
    player_input = gets.chomp
  end
  computer_input = choices.sample
  puts "Computer plays #{computer_input}"
  
  result = game.p1_wins?(player_input.downcase, computer_input)
  if result == true
    puts "You win this round!"
    player_score += 1
  elsif result == "tie"
    puts "This round is a tie."
  else
    puts "You lose this round!"
    computer_score +=1
  end
  puts "_______________________"
  puts "Your score: #{player_score}"
  puts "Computer score: #{computer_score}"
end
puts "
== == == == == == == == == == == == == == == =="
(player_score == 5) ? (puts "Game Over. You win!") : (puts "Game Over. Computer wins!")
puts "== == == == == == == == == == == == == == == =="

