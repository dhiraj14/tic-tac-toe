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
    puts "\n"
  end

  def display_instructions
    puts "Playing Instructions"
    puts "Choose any box from 1 to 9 as below and play"
    puts "\n"
    puts " 1 | 2 | 3"
    puts "----------"
    puts " 4 | 5 | 6"
    puts "----------"
    puts " 7 | 8 | 9"
    puts "\n"
  end
end
