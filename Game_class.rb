class Game
  attr_reader :decoder, :coder, :goodCode

  def initialize(coder, decoder)
    @coder = coder
    @decoder = decoder
  end


  def display_rules
    puts "Теперь немного правил"
    puts "1. Загадывает комбинацибю компьютер. Ваше дело ее отгадать."
    puts "Комбинация состоит из 4 цветов"
    puts "У тебя 12 попыток, удачи!"
    puts "Как бдешь готов, нажми Enter"
    gets
  end

  def getGoodCode
    @goodCode = self.coder.createCodeByComp
  end

  def getAttemptCode
    @attempt = self.coder.create_code_byplayer
  end

end

