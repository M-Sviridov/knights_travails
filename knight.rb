# frozen_string_literal: true

require './board'

# class representing a knight piece in the game of chess
class Knight
  attr_accessor :position, :moves

  def initialize(coordinates)
    @position = coordinates
    @moves = possible_moves(coordinates, [2,1])
  end

  def possible_moves(start, destination)
    moves = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]]
    queue = [start]
    visited = [start]
    current_position = nil

    until queue.empty? || current_position == destination
      current_position = queue.shift
      moves.each do |move|
        new_coordinates = [current_position[0] + move[0], current_position[1] + move[1]]
        if new_coordinates == destination
          visited << new_coordinates
          return visited
        elsif valid_move?(new_coordinates) && !visited.include?(new_coordinates)
          queue << new_coordinates
          visited << new_coordinates
        end
      end
    end
  end

  def show_shortest_path(start, destination)
    possible_moves(start, destination).each { |move| p move }
  end

  def valid_move?(coordinates)
    x, y = coordinates
    x.between?(0, 7) && y.between?(0, 7)
  end
end

knight = Knight.new([0, 0])
knight.moves
knight.show_shortest_path(knight.position, [3, 3])
