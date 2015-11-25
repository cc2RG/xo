require_relative('winchecker')

winchecker = Winchecker.new

empty_board = [ [nil,nil,nil],[nil,nil,nil,],[nil,nil,nil] ]
symbol = :o
puts "Check that an empty board does not win: expect that #{winchecker.has_won?(symbol, empty_board)} is false"

horizontal_board = [ [:o,:o,:o],[nil,nil,nil,],[nil,nil,nil] ]
symbol = :o
puts "Check that a horizontal line will win: expect that #{winchecker.has_won?(symbol, horizontal_board)} is true"