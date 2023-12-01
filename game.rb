class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start_game
    3.times do
      play_turn
      break unless @player1.is_alive && @player2.is_alive
    end

    display_game_over
  end

  private

  def play_turn
    [@player1, @player2].each do |player|
      puts "----- NEW TURN -----"
      question = Question.new  # Create a new question for each player
      question.ask_question(player.id)
      answer = gets.chomp
      correct_answer = question.correct_answer
      player.answer_question(answer, correct_answer)
      display_result(player)
    end
  end

  def display_result(player)
    puts player
    puts ""
  end

  def display_game_over
    puts "----- GAME OVER -----"
    puts ""
    
    if @player1.score > @player2.score
      winner = @player1
      puts "Player #{winner.id} wins with a score of #{winner.score}/3"
    elsif @player2.score > @player1.score
      winner = @player2
      puts "Player #{winner.id} wins with a score of #{winner.score}/3"
    else
      puts "It's a tie! Both players have a score of #{@player1.score}/3"
    end
    
    puts "Goodbye!"
  end
end