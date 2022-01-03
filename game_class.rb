class Game
  attr_reader :current_player
  
  def initialize(player) 
    @current_player = player
  end

  def ask_question
    puts @current_player.name << ': What does 5 plus 3 equal?' 
  end
end