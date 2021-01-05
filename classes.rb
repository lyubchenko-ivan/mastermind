class Player
  attr_accessor :username
  @@count_players = 1

  def initialize(username)
    @username = username
    @id = @@count_players
    @@count_players += 1
  end
end

class CodeCreator

end

class Decoder

end

class Game

  def display_rules
    puts "Теперь немного правил"
    puts "1. Загадывает комбинацибю компьютер. Ваше дело ее отгадать."
    puts "Комбинация состоит из 4 цветов"
    puts "У тебя 12 попыток, удачи!"
    puts "Как бдешь готов, нажми Enter"
    gets
  end

end

class Desk

end

class Combination

end

class GoodCombination

end
