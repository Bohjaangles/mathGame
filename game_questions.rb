class Question_generator
  attr_reader :a, :b, :answer
  def initialize
    @a = Random.rand(3..12)
    @b = Random.rand(3..12)
    @answer = @a * @b
  end
  def ask player
    puts "#{player.name}: what does #{@a} * #{@b} equal?" 
    input = gets.chomp.to_i
    if input != @answer
      puts "Seriosly? No!"
      player.lose_life
    else
      puts "YES! You are correct"
    end    
  end  
end
