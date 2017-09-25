require_relative "lib/test"
require_relative "lib/result"

name = ARGV[0]

if Gem.win_platform? && ARGV[0]
  name = name.encode("UTF-8")
end

file_path = "#{File.dirname(__FILE__)}/data/"

begin
  questions = File.new("#{file_path}questions.txt").readlines
  results = File.new("#{file_path}results.txt").readlines
rescue SystemCallError
  abort "Файлы вопросов и ответов не найдены."
end

if name == nil
  name = "Анонимус"
end

puts "Добрый день, #{name}! Вашему вниманию предлагается несколько простых вопросов. Отвечайте быстро, однозначно: «да», «нет», «иногда»."

test = Test.new(questions)

until test.finished?
  test.next_question
  test.count
end

result_printer = Result.new(results)
result_printer.result_test(test)
