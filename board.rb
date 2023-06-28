class Board
  attr_accessor :positions

  def initialize
    @positions = Hash[(1..9).map {|k| [k, ""]}]
  end

  def display
    puts "#{@positions[1]} | #{@positions[2]} | #{@positions[3]}"
    puts "#{@positions[4]} | #{@positions[5]} | #{@positions[6]}"
    puts "#{@positions[7]} | #{@positions[8]} | #{@positions[9]}"
  end
end