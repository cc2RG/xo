require('pry-byebug')
require_relative('game')
require_relative('winchecker')


winchecker_1 = Winchecker.new()


game = Game.new(winchecker_1)


game.place_piece(0,0)
game.place_piece(1,1)
game.place_piece(1,0)
game.place_piece(2,2)
game.place_piece(2,0)











binding.pry;''