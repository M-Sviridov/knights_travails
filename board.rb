# frozen_string_literal: true

# class representing a chess board
class Board
  attr_accessor :knight, :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
    @knight = "\u2658"
  end

  def to_s
    board.each_with_index do |row, i|
      row.each_with_index do |piece, j|
        if (i + j).even?
          print "\e[47m #{piece} \e[0m"
        else
          print "\e[40m #{piece} \e[0m"
        end
      end
      puts
    end
  end
end

new = Board.new
new.to_s
