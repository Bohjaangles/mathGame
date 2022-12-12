

## Classes: 
- player
  - tracks lives
  - tracks name
  - possibly tracks the answer given for specific question via gets.chomp

- game
  roles:
  - Start the game,
  - create the players in the game by calling the player class when initialized
  - Prompt players by name to  provide inputs to questions
  - generate questions, possibly have this be a module
  - decides if player is correct or not and calls them to lose life
  - outputs players scores between each round (round being both players are asked a question and have answered)
  - ends the game when one players lives  == 0
  - outputs the winner by name and score(lives)
