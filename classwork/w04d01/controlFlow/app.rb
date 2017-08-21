puts "Welcome to Crazy maze, you must choose the correct doors to escape this maze"
puts "Enter your name: "
user_Name = gets.chomp.capitalize!

puts "\nHello, #{user_Name}"
puts "You see three Doors: Red Yellow Blue"
puts "Choose one of the three doors"
user_doors = gets.chomp


puts "#{user_Name}, you picked the #{user_doors}"

if user_doors == "red"
	puts "Oh no, You died"
elsif user_doors == "yellow"
	puts "\nWell done you passed through the right door\n\n"

	puts "old man appears and asks you a question.... "
	puts "pick a number between 1 - 5... "

	user_number = gets.chomp

	if user_number == "4"
		puts "Well done, The old man lets you pass through to another room\n\n"


	else 
		puts "Oh no, Old man killed you"
	end



elsif user_doors == "blue"
	puts "Oh no, its locked....and you died"

else
	puts "invalid user input try again.."
end