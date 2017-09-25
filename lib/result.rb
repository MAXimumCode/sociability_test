class Result
  attr_reader :results, :answers

  def initialize(results)
    @answers = answers
    @results = results
  end

  def result_test(test)
    puts "\nВаш результат теста (очков - #{test.answers}):"
    if test.answers >= 30 && test.answers <= 32
      puts @results[0]
    elsif test.answers >= 25 && test.answers <= 29
      puts @results[1]
    elsif test.answers >= 19 && test.answers <= 24
      puts @results[2]
    elsif test.answers >= 14 && test.answers <= 18
      puts @results[3]
    elsif test.answers >= 9 && test.answers <= 13
      puts @results[4]
    elsif test.answers >= 4 && test.answers <= 8
      puts @results[5]
    else
      puts @results[6]
    end
  end
end
