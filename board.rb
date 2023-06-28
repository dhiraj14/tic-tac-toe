class Board
  attr_accessor :positions

  def initialize
    @positions = Hash[(1..9).map {|k| [k, ""]}]
  end

  def display
    system('clear')
    puts "\n"
    puts " #{@positions[1]} | #{@positions[2]} | #{@positions[3]}"
    puts "----------"
    puts " #{@positions[4]} | #{@positions[5]} | #{@positions[6]}"
    puts "----------"
    puts " #{@positions[7]} | #{@positions[8]} | #{@positions[9]}"
  end
end
