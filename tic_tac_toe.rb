require_relative "player"

class TicTacToe
  def initialize
    @board = Hash[(1..9).map {|k| [k, ""]}]
    @player_1 = Player.new(name: "Player 1", token: "X")
    @player_2 = Player.new(name: "Player 2", token: "O")
    @moves_left = 9
  end

  def play
    puts "Let's play 🎮"
    while @moves_left > 0
      current_player = @moves_left % 2  == 0 ? @player_2  : @player_1
      puts "#{current_player.name}'s Move:"
      position = gets.chomp.to_i
      if @board[position].empty?
        current_player.occupied_positions << position
        @board[position] = current_player.token
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
