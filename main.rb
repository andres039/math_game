require './game_class.rb'
require './players_class.rb'

player1 = Player.new('Player1', 3)
player2 = Player.new('Player2', 3)

test_game = Game.new(player2)

test_game.ask_question