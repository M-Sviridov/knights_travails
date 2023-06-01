# frozen_string_literal: true

require './board'

# class representing a knight piece in the game of chess
class Knight
  attr_accessor :position, :moves, :parent

  def initialize(coordinates, parent = nil)
    @position = coordinates
    @moves = possible_moves
    @parent = parent
  end

  def possible_moves
    moves = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]]
    result = []

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

  def create_children
    children = []
    current_knight = self
    possible_moves.each do |move|
      new_knight = Knight.new(move, current_knight)
      children << new_knight
    end
    children
  end

  def retrace_parent(knight = self, result = [])
    return result << knight.position if knight.parent.nil?

    result << knight.position
    retrace_parent(knight.parent, result)
  end

  def shortest_path
    puts "You made it in #{retrace_parent.length} moves! Here's your path: "
    retrace_parent.reverse.each { |position| p position }
  end
end
