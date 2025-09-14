require 'debug'
require 'colorize'
require 'rubocop'

require_relative 'lib/game'

new_game = Game.new
new_game.game_start
