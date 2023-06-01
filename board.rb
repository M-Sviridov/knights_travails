# frozen_string_literal: true

require './knight'

# class representing a chess board
class Board
  attr_accessor :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
  end

  def knight_moves(start, destination)
    knight = Knight.new(start)
    queue = knight.create_children

    until queue.empty?
      current_child = queue.shift
      return current_child.shortest_path if current_child.position == destination

      queue += current_child.create_children
    end
  end
end
