require "./game_questions.rb"

class Game
  attr_accessor :p1, :p2
  def initialize
    puts "  welcome to this simple math game"
    puts "  you each get 3 lives, and I will ask you each a simple math question in turn"
    puts "  if you answer any question incorrectly, you will lose a life"
    puts "  the loser will be the frist to lose all 3 lives, and the other player will win"
    puts "  to begin, let me get your names"
    puts "  player 1, what is your name?"
    p1_name = gets.chomp
    @p1 = Player.new(p1_name)
    puts "  thank you #{@p1.name}, player 2, what is your name?"
    p2_name = gets.chomp
    @p2 = Player.new(p2_name)
    puts "  thank you #{@p2.name}"
    puts "  let us begin"
    puts "  #{@p1.name}: #{@p1.lives}/3 VS #{@p2.name}: #{@p2.lives}/3"
  end
  def game_start
    current_player = @p1
    while @p1.lives > 0 and @p2.lives > 0 do
      q = Question_generator.new
      q.ask current_player 
      if current_player == @p1
        current_player = @p2
      else 
        current_player = @p1
      end  
      puts "  #{@p1.name}: #{@p1.lives}/3 VS #{@p2.name}: #{@p2.lives}/3"
      
      if @p1.lives > 0 and @p2.lives > 0
        puts "-----------NEW TURN-----------"
      end
    end
      if @p1.lives == 0
        puts "-----------GAME OVER-----------"
        puts "#{@p2.name} wins with a score of #{@p2.lives}/3"
      else
        puts "-----------GAME OVER-----------"
        puts "#{@p1.name} wins with a score of #{@p1.lives}/3"
    end  
  end  
end