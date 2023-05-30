# frozen_string_literal: true

# class representing a chess board
class Board
  attr_accessor :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
  end

  def knight_moves(start, destination); end
end
