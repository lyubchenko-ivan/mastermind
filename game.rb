require './classes.rb'

system("clear")
puts 'Привет, это игра "MASTERMIND"'
puts 'Пишу я ее для того, чтобы укрепить свои знания в  ООП Ruby'
puts "Не судите сильно строго, приятной игры"


puts "Введите имя игрока"
username = gets.chomp
player = Player.new(username)
system "clear"
puts "Приветствую тебя, #{player.username}"

computer = Player.new("computer")


game = Game.new

game.display_rules



