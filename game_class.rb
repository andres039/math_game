# This will need a .start method staying in the context.
class Game
  attr_accessor :current_player
  
  def initialize(player) 
    @current_player = player
  end

  def compare_with_right_answer(right, user)
    if right != user.to_i 
      puts 'Nope!' 
      current_player.lives = current_player.lives - 1
    else puts 'Yeah!'
    end
  end
  
  

  def check_lives
    puts current_player.lives > 1 ? "#{current_player.name} wins! with a score of #{current_player.lives}/3" : 'next' 
end
  
  def ask_question
   number1 = rand(20)
   number2 = rand(20)
   result = number1 + number2
   puts @current_player.name << ": What does #{number1} plus #{number2} equal?"
   guess = gets.chomp
    compare_with_right_answer(result, guess)
    check_lives
  end
end