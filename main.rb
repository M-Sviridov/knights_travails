# frozen_string_literal: true

require './board'

game = Board.new
game.knight_moves([0, 0], [1, 2])
puts ''
game.knight_moves([0, 0], [3, 3])
puts ''
game.knight_moves([3, 3], [4, 3])
puts ''
game.knight_moves([3, 3], [0, 0])
puts ''
game.knight_moves([0, 0], [7, 7])
puts ''
game.knight_moves([7, 7], [0, 0])
