class Test
  attr_reader :questions, :answers

  def initialize(questions)
    @questions = questions
    @answers = 0
    @current_question = 0
    @user_input = nil
  end

  def finished?
    @current_question >= @questions.size
  end

  def next_question
    puts @questions[@current_question]
    @user_input = STDIN.gets.chomp.encode("UTF-8").downcase
    until @user_input == 'да' || @user_input == 'нет' || @user_input == 'иногда'
      puts "Отвечайте 'Да' или 'Нет' или 'Иногда' и нажмите Enter"
      @user_input = STDIN.gets.chomp.encode("UTF-8").downcase
    end
    @current_question += 1
  end

  def count
    if @user_input == "да"
      @answers += 2
    elsif @user_input == "нет"
      @answers += 0
    else
      @answers += 1
    end
  end

end

