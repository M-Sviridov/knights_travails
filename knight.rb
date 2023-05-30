# frozen_string_literal: true

require './board'

# class representing a knight piece in the game of chess
class Knight
  attr_accessor :position, :moves

  def initialize(coordinates)
    @position = coordinates
    @moves = possible_moves
  end

  def possible_moves(result = [])
    moves = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]]

    moves.each do |move|
      new_coordinates = [position[0] + move[0], position[1] + move[1]]
      result << new_coordinates if valid_move?(new_coordinates)
    end
    result
  end

  def valid_move?(coordinates)
    x, y = coordinates
    x.between?(0, 7) && y.between?(0, 7)
  end
end

knight = Knight.new([0, 0])
p knight.moves
