# frozen_string_literal: true

require 'pry'

require_relative 'board.rb'
require_relative 'displayable.rb'
require_relative 'game.rb'
require_relative 'game_prompts.rb'
require_relative 'notation_translator.rb'
require_relative 'move_validator.rb'
require_relative 'pieces/piece.rb'
require_relative 'pieces/king.rb'
require_relative 'pieces/queen.rb'
require_relative 'pieces/rook.rb'
require_relative 'pieces/bishop.rb'
require_relative 'pieces/knight.rb'
require_relative 'pieces/pawn.rb'
require_relative 'movement/basic_movement.rb'
require_relative 'movement/en_passant_movement.rb'
require_relative 'movement/pawn_promotion_movement.rb'
require_relative 'movement/castling_movement.rb'

game = Game.new
game.play

# REFACTOR:
# Game class is too big - ok?
# Board class is still too big - ok? -> move initial placement into module?
# Remove testing notes & add method description comments
# Make sure methods are private if not used outside of class
# Re-write tests using 3-letter abbreviations, to be able to see clearly ???
# Remove any mention of pry throughout project

# WHEN PLAYING GAME TO TEST/DE-BUG -> MOVE_VALIDATOR:
# binding.pry if @current_piece.nil?

# SAVE & LOAD GAME:
# Idea: Make a saved game for "new" with pieces in original spots?
