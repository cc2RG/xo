require('pry-byebug')
require_relative('game')
require_relative('winchecker')
require_relative('rubbish_winchecker')

winchecker_1 = Winchecker.new()


game = Game.new(winchecker_1)

binding.pry;''