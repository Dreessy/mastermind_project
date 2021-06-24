require_relative "game.rb"

def reboot
  puts "do you want restart? y or n"
  replay = gets.chomp!
  if replay.eql? 'y'
    Game.new.start
    reboot
  end
end
Game.new.start
reboot