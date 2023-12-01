class Player
  attr_accessor :id, :lives, :score

  def initialize(id)
    @id = id
    @lives = 3
    @score = 0
  end

  def answer_question(answer, correct_answer)
    if answer.to_i == correct_answer
      puts 'YES! You are correct.'
      @score += 1
    else
      puts 'Seriously? No!'
      @lives -= 1
    end
  end

  def is_alive
    @lives > 0
  end

  def to_s
    "Player #{@id}: Lives - #{@lives}, Score - #{@score}"
  end
end