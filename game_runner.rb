require('pry-byebug')
require_relative('game')
require_relative('winchecker')


winchecker_1 = Winchecker.new()


game = Game.new(winchecker_1)


game.turn(0,0)
game.turn(1,1)
game.turn(1,0)
game.turn(2,2)
game.turn(2,0)











binding.pry;''