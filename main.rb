require_relative "test"
require_relative "result"

name = ARGV[0]

if Gem.win_platform? && ARGV[0]
  name = name.encode("UTF-8")
end

if name == nil
  name = "Анонимус"
end

puts "Добрый день, #{name}! Вашему вниманию предлагается несколько простых вопросов. Отвечайте быстро, однозначно: «да», «нет», «иногда»."

test = Test.new

until test.finished?
  test.next_question
  test.count
end

result_printer = Result.new
result_printer.result_test(test)
