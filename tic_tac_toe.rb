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
      puts "#{current_player.name}'s Move: "
      selected_position = gets.chomp.to_i

      if @board.positions.keys.include?(selected_position) && @board.positions[selected_position].empty?
        current_player.occupied_positions << selected_position
        @board.positions[selected_position] = current_player.token
        @moves_left -= 1
      else
        puts "invalid move"
      end
      system('clear')
      @board.display
    end
  end
end

TicTacToe.new.play
