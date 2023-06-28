require_relative "board"
require_relative "player"

class TicTacToe
  def initialize
    @board = Board.new
    @player_1 = Player.new(name: "Player 1", token: "X")
    @player_2 = Player.new(name: "Player 2", token: "O")
    @moves_left = 9
  end

  def play
    puts "Let's play 🎮"
    while @moves_left > 0
      current_player = @moves_left % 2  == 0 ? @player_2  : @player_1
      print "#{current_player.name}'s Move:"
      position = gets.chomp.to_i
      if @board.positions.keys.include?(position) && @board.positions[position].empty?
        current_player.occupied_positions << position
        @board.positions[position] = current_player.token
        @moves_left -= 1
      else
        print "invalid move"
      end
      @board.display
    end
  end
end

TicTacToe.new.play
