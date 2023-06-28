class Player
  attr_accessor :name, :token, :occupied_positions

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

  def initialize(name: , token: nil)
    @name = name
    @token = token
    @occupied_positions = []
  end

  def won?
    return false if occupied_positions.length < 3
    WINNING_COMBINATIONS.any? do |combination|
      combination & occupied_positions == combination
    end
  end
end
