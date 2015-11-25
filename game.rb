class Game
  def initialize(winchecker)
    @board = [ [nil,nil,nil],[nil,nil,nil,],[nil,nil,nil] ]
    @pieces = [:o, :x]
    @turn = 0
    @winchecker = winchecker
  end


  def turn(row,column)
    place_piece(row,column)
    puts display_board
    check_for_win
  end 
  
  def win_count(current_piece)

    
  end  
  
  def check_for_win
    if @winchecker.has_won?(current_piece, @board)
      puts "winner is #{current_piece}"
      
      new_game
    elsif board_full
      puts "full board, play again!!!"
      new_game
     else 
      @turn += 1
    end  
  end  

  def display_board
    row_strings = @board.map do |row|
      row_to_string(row)
    end
    row_strings.join("\n_ _ _\n")  
  end  

  def place_piece(row, column)
    if row >= 3 || column >= 3
      puts "INVALID MOVE"
      return
    end    
    if @board[row][column]
      puts "Already a piece there"
      return
    end  
    @board[row][column] = @pieces[ @turn % 2 ]
      
  end  

  def clear_board
    @board = [ [nil,nil,nil],[nil,nil,nil,],[nil,nil,nil] ]
    @turn = 0
  end  

  def new_game
    clear_board
    @pieces.reverse!
  end  

  def current_piece
    @pieces[ @turn % 2 ]
  end  
  

  

  private

    def row_to_string(row)
      row_symbols = row.map do |piece|
         piece || " "  
      end  
      row_symbols.join("|")
    end  

    def board_full
    @board.flatten.all?
    end  
    
end