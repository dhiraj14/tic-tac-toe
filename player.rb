class Player
  attr_accessor :name, :token, :occupied_positions

  def initialize(name: , token:)
    @name = name
    @token = token
    @occupied_positions = []
  end
end
