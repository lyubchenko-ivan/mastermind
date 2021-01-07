require './classes.rb'
require './global.rb'
require './Game_class.rb'


system("clear")
puts 'Привет, это игра "MASTERMIND"'
puts 'Пишу я ее для того, чтобы укрепить свои знания в  ООП Ruby'
puts "Не судите сильно строго, приятной игры"



username = nil


#создаем дешифровщика
begin
  puts "Введите имя игрока"
  username = gets.chomp.strip
end while (username == '')
decoder = Decoder.new(username)


#приветствуем дешифровщика
system "clear"
puts "Приветствую тебя, #{decoder.username}"



coder = CodeCreator.new("computer")
puts "Твой соперник #{coder.username}"


#создание новой игры
game = Game.new(coder, decoder)


#создание загадываемой комбинации комбинации
game.getGoodCode



#написать логику и последовательность ходов декодера

begin
  game.getAttemptCode
  game.corrections
  puts "Нажмите Enter для начала следующего хода"
  # print game.goodCode
  gets
end  while (game.decoder_win? == false && game.coder_win? == false)