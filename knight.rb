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
      new_x_coord = position[0] + move[0]
      new_y_coord = position[1] + move[1]
      result << [new_x_coord, new_y_coord] if new_x_coord.between?(0, 7) && new_y_coord.between?(0, 7)
    end
    result
  end
end

knight = Knight.new([0, 3])
p knight.moves
