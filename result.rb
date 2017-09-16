class Result
  def initialize
    @results =[
      "30-32 очко. Вы явно некоммуникабельны, и это Ваша беда, так как больше всего страдаете от этого Вы сами. Но и близким Вам людям нелегко." \
      "На Вас трудно положиться в деле, которое требует групповых усилий. Старайтесь быть общительнее, контролируйте себя.",
      "25-29 очков. Вы замкнуты, неразговорчивы, предпочитаете одиночество, поэтому у Вас мало друзей. Новая работа и необходимость новых " \
      "контактов если и не ввергают Вас в панику, то надолго выводят из равновесия. Вы знаете эту особенность своего характера и бываете недовольны собой. " \
      "Но не ограничивайтесь только таким недовольством – в Вашей власти переломить эти особенности характера. Разве не бывает, что при какой-либо сильной увлеченности " \
      "Вы приобретаете вдруг полную коммуникабельность? Стоит только встряхнуться.",
      "19-24 очков. Вы в известной степени общительны и в незнакомой обстановке чувствуете себя вполне уверенно. Новые проблемы Вас не пугают. " \
      "И все же с новыми людьми сходитесь с оглядкой, в спорах и диспутах участвуюте неохотно. В Ваших высказываниях порой слишком много сарказма, " \
      "без всякого на то основания. Эти недостатки исправимы.",
      "14-18 очков. У вас нормальная коммуникабельность. Вы любознательны, охотно слушаете интересного собеседника, достаточно терпеливы в общении, " \
      "отстаиваете свою точку зрения без вспыльчивости. Без неприятных переживаний идете на встречу с новыми людьми. В то же время не любите шумных компаний; " \
      "экстравагантные выходки и многословие вызывают у Вас раздражение.",
      "9-13 очков. Вы весьма общительны (порой, быть может, даже сверх меры). Любопытны, разговорчивы, любите высказываться по разным вопросам, что, бывает, вызывает " \
      "раздражение окружающих. Охотно знакомитесь с новыми людьми. Любите бывать в центре внимания, никому не отказываете в просьбах, хотя не всегда можете их выполнить. " \
      "Бывает, вспылите, но быстро отходите. Чего Вам недостает, так это усидчивости, терпения и отваги при столкновении с серьезными проблемами. При желании, однако, " \
      "Вы можете себя заставить не отступать." ,
      "4-8 очков. Вы, должно быть, «рубаха-парень». Общительность бьет из Вас ключом. Вы всегда в курсе всех дел. Вы любите принимать участие во всех дискуссиях, хотя серьезные " \
      "темы могут вызвать у Вас мигрень или даже хандру. Охотно берете слово по любому вопросу, даже если имеете о нем поверхностное представление. Всюду чувствуете себя в своей тарелке. " \
      "Беретесь за любое дело, хотя не всегда можете успешно довести его до конца. По этой самой причине руководители и коллеги относятся к Вам с некоторой опаской и сомнениями. " \
      "Задумайтесь над этими фактами.",
      "3 очка и менее. Ваша коммуникабельность носит болезненный характер. Вы говорливы, многословны, вмешиваетесь в дела, которые не имеют к Вам никакого отношения. " \
      "Беретесь судить о проблемах, в которых совершенно не компетентны. Вольно или невольно Вы часто бываете причиной разного рода конфликтов в Вашем окружении. " \
      "Вспыльчивы, обидчивы, нередко бываете необъективны. Серьезная работа не для Вас. Людям – и на работе, и дома, и вообще повсюду – трудно с Вами. " \
      "Да, Вам надо поработать над собой и своим характером! Прежде всего воспитывайте в себе терпеливость и сдержанность, уважительно относитесь к людям, наконец, " \
      "подумайте о своем здоровье – такой стиль жизни не проходит бесследно."
      ]
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
