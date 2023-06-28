require_relative "board"
require_relative "player"

class TicTacToe
  def initialize
    @board = Board.new
    @player_1 = Player.new(name: "Player 1", token: "X", board: @board)
    @player_2 = Player.new(name: "Player 2", token: "O", board: @board)
    @moves_left = 9
  end

  def play
    puts "Let's play 🎮"

    while @moves_left > 0
      current_player = @moves_left % 2  == 0 ? @player_2  : @player_1
      puts "#{current_player.name}'s Move: "
      selected_position = gets.chomp.to_i

      if @board.positions[selected_position]&.empty?
        move(current_player, selected_position)
      else
        puts "INVALID MOVE"
      end
      @board.display

      if current_player.won? 
        puts "#{current_player.name} WINS"
        return
      end
    end
    puts "It's a DRAW"
  end

  def move(current_player, selected_position)
    current_player.move(selected_position)
    @moves_left -= 1
  end
end

TicTacToe.new.play
