require_relative "board"
require_relative "player"

class TicTacToe
  def initialize
    @board = Board.new
    @moves_left = 9
    @current_player = nil
  end

  def play
    puts "Let's play 🎮"
    initialize_players

    while @moves_left > 0
      puts "#{@current_player.name}'s Move: "
      selected_position = gets.chomp.to_i

      if @board.positions[selected_position]&.empty?
        move(selected_position)
        @board.display

        if @current_player.won? 
          puts "#{@current_player.name} WINS"
          return
        end
        @current_player = @current_player == @player_1 ? @player_2 : @player_1
      else
        puts "INVALID MOVE"
      end
    end
    puts "It's a DRAW"
  end

  def move(selected_position)
    @current_player.occupied_positions << selected_position
    @board.positions[selected_position] = @current_player.token
    @moves_left -= 1
  end

  def initialize_players
    puts "\nEnter the name of first Player: ";
    @player_1 = Player.new(name: gets.chomp)
    
    puts "\nEnter the name of second Player: ";
    @player_2 = Player.new(name: gets.chomp)
    toss = rand(5) % 2;

    if toss == 1
      @player_1.token, @player_2.token = "X", "O"
      @current_player = @player_1
    else
      @player_1.token, @player_2.token =  "O", "X"
      @current_player = @player_2
    end
    puts "#{@current_player.name} WON the Toss"
    @board.display
  end
end

TicTacToe.new.play
