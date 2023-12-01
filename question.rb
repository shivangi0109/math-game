class Question
  attr_reader :num1, :num2

  def initialize
    generate_numbers
  end

  def ask_question(player_id)
    puts "Player #{player_id}: What does #{@num1} plus #{@num2} equal?"
  end

  def correct_answer
    @num1 + @num2
  end

  def generate_numbers
    @num1 = rand(1..10)
    @num2 = rand(1..10)
  end
end
