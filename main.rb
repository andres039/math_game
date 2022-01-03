require './game_class.rb'
require './players_class.rb'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
the_game = Game.new(player1, player2)

the_game.start