class Game
  attr_reader :decoder, :coder, :goodCode, :attempt
  attr_accessor :attempts

  def initialize(coder, decoder)
    @coder = coder
    @decoder = decoder
    @attempts = 0
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
    self.attempts += 1
  end

  def coder_win?
    if self.attempts == 12
      puts "Победил, code creator, попытки кончились"
      return true
    end
    return  false
  end

  def decoder_win?
    if self.attempt == self.goodCode
      puts "Комбинация отгадана, победил decoder"
      return true
    end
    return false
  end


  def corrections
    temp = []
    good_temp = []
    print "#{self.attempts}. "
    self.attempt.each {|value| print value}

    print "\t"
    #проверка на полные совпадения
    self.goodCode.each.with_index do |color, index|
      if self.attempt[index] == color then
        print $ANSWERS[:black]
      else
        temp << self.attempt[index]
        good_temp << color
      end
    end

    #проверка на частичные совпадения

    index = 0
    while(index < good_temp.length)
      color = good_temp[index]

      if temp.include?(color)
        temp_index = temp.index(color)
        print $ANSWERS[:white]
        good_temp.delete_at(index)
        temp.delete_at(temp_index)
      else index += 1
      end

    end

    puts

  end
end

