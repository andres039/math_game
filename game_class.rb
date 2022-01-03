
class Game 
  attr_accessor :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def start
    ask_question
   end

  def ask_question
    first_number = rand(20)
    second_number = rand(20)
    result = first_number + second_number
    puts "#{self.current_player.name}: what is #{first_number} plus #{second_number}?"
    user_answer = gets.chomp
    compare_with_right_answer(user_answer, result)
    check_lives
  end

  def compare_with_right_answer(user_answer, result)
    if user_answer.to_i == result 
      puts "good job! #{current_player.name} \n"
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3 \n ----- NEW TURN ----- \n"
      next_turn
      else 
        self.current_player.lives = self.current_player.lives - 1
        next_turn
        puts "incorrect! \n "
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3 \n ----- NEW TURN ----- \n"
        
      end
  end

  def check_lives
    self.current_player.lives < 1 ? end_game : ask_question
  end

  def next_turn
    if self.current_player == player1
      self.current_player = player2
    else 
      self.current_player = player1
    end
  end 

  def end_game
    next_turn
    puts "#{self.current_player.name} wins with a score of #{self.current_player.lives}/3"
  end
end
