require_relative "human.rb"
require_relative "computer.rb"
class Game

  def start
    display
    game_mode = mode_input
    code_maker if game_mode =="1"
    code_breaker if game_mode == "2"
  end



  def mode_input
    puts "Enter"
    input = gets.chomp!
    return input if input.match(/^[1-2]$/)
    puts "Invalid input"
    mode_input
  end

  def code_maker
    Code_maker.new.play
  end


  def code_breaker
    puts 'clear'
    puts "Code Maker mode,Enter your first guess"
    Code_breaker.new.play 

  end


def display
puts "Hi, Welcome to MasterMind Game"
puts "Choose two modes"
puts "1. Code Maker: - you make a code and computer guesses it"
puts "2. Code Breaker: - computer randomly selects a code and you try to break it.\n"
puts "X: - Right Number Wrong Position"
puts "O: - Right Number Right Position"
puts
end

end