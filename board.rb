# frozen_string_literal: true

# class representing a chess board
class Board
  attr_accessor :knight, :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
    @knight = "\u2658"
  end
end

