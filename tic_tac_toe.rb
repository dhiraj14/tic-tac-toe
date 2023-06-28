class TicTacToe
  def initialize
    @board = Hash[(1..9).map {|k| [k, ""]}]
    @player_1 = []
    @player_2 = []
    @moves_left = 9
  end

  def play
    puts "Let's play"
    while @moves_left > 0
      puts "Select a position: "
      position = gets.chomp.to_i
      if @board[position].empty?
        if @moves_left % 2 == 0
          character = "X"
          @player_1 << position
        else
          character = "O"
          @player_2 << position
        end
        @board[position] = character
        @moves_left -= 1
      else
        puts "invalid move"
      end
      display_board
    end
  end

  def display_board
    puts "#{@board[1]} | #{@board[2]} | #{@board[3]}"
    puts "#{@board[4]} | #{@board[5]} | #{@board[6]}"
    puts "#{@board[7]} | #{@board[8]} | #{@board[9]}"
  end
end

TicTacToe.new.play
