require './global.rb'
require './Game_class.rb'


#Игрок
class Player
  attr_accessor :username, :id
  @@count_players = 1

  def initialize(username)
    @username = username
    @id = @@count_players
    @@count_players += 1
  end

  def create_code_byplayer
    code = []
    str = nil
    puts "Введите комбинацию"

    $CODE_SIZE.times do |index|
      temp = nil
      begin
        print "Введите #{index + 1}-ый символ кобинации: "
        temp = gets.chomp.strip

      end while(temp.length != 1 || !$COLORS.include?(temp))
      code << temp
    end

    code
  end


  def createCodeByComp
    code = []
    $CODE_SIZE.times do
      code << $COLORS.sample
    end

    return  code
  end
end


#Класс описывающий шифровщика
class CodeCreator < Player

end


#класс описывающий дешифровщика
class Decoder < Player

end


class Desk

end
