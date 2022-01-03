##

Outline of the game. 

# Players

Lives

Will keep track of the lives of each player and that will be the state. It also needs to modify that state after the player has obtained a result.

Needs to know the lives the player has, therefore it needs to be initialized with 3 lives.
It needs a getter/setter method, so attr_accessor, both public methods.
It will be initialized by game with 3 lives. 
# Game

The instance of game is a new game, and controls the flow of it. It will call the class Players to create two of them, then it will generate questions, prompt the players, take their answers, verify them and check the state of each player after each turn to see if we have a winner yet. 

Scores
Questions
Answers
Turns
Create players

It needs to know the lives remaining on Players by checking the attr_accessor. 
It needs to know the answers given by the user, and the correct answers, which will be a current [STATE] inside of it. 
This class thakes the user input and prints the output, as well as who the current player is.

We need to know who is current_player

The methods we need here are:

- create_players
  Initializes two instances of players with 2 lives each
- generate_question
  Prints a question and waits for the user input
- compare_with_right_answer
  Takes in the user input and compares with right answer
- update_lives
  calls accessor in current_player and set to lives - 1 
- check_lives
  calls accessor in current_player and asks lives < 1? it calls either next_turn or end_game accordingly
- next_turn
  changes current_player and starts from generate_question
- end_game
  prints the opposite of current_player winner with lives remaining (calls accessor).

##

# Description: 
The game begins with a new instance of game, which will create two instances of player, player 1 and player 2. They will be initialized with 3 lives. Game will generate and print the first question directed at player 1 and wait for the user input. It will then check that answer with the right answer, and call the player 1 accessor to modify the lives remaining accordingly. Next, it will verify that the lives remaining are > 0. If they are not, it will stop the game, printing a winner with a definite score.  If the lives are greater than 0, it will print a new question addressed to player 2, and the process will continue this way until the lives remaining of either one are > 0. 