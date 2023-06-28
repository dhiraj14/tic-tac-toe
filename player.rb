class Player
  attr_accessor :name, :token, :occupied_positions, :board

  WINNING_COMBINATIONS = [
    [1,2,3],
    [4,5,6],
    [7,8,9],
    [1,4,7],
    [2,5,8],
    [3,6,9],
    [1,5,9],
    [3,5,7],
  ]

  def initialize(name: , token:, board:)
    @name = name
    @token = token
    @board = board
    @occupied_positions = []
  end

  def move(selected_position)
    occupied_positions << selected_position
    @board.positions[selected_position] = token
  end

  def won?
    WINNING_COMBINATIONS.any? do |combination|
      combination & occupied_positions == combination
    end
  end
end
