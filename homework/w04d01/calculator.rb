def add_num num1, num2
	num1 + num2
end

def sub_num num1, num2
	num1 - num2
end

def mul_num num1, num2
	num1 * num2
end

def div_num num1, num2
	num1 / num2
end




puts "choose a calculator type: \n"
puts "\n1. Basic calculator\n2. BMI"
user_type = gets.chomp


if user_type === "1"
	puts "\n1.Add\n2.Substract\n3.Multiply\n4.Divide\n"
	user_input = gets.chomp

elsif user_type === "2"
	print "Enter you height (m): "
	usr_height = gets.to_f

	print "Enter you weight (kgs): "
	usr_weight = gets.to_f

	yourbmi = "%.1f" % (usr_weight / (usr_height * usr_height))
	print "Your BMI is #{yourbmi}\n"
end





if user_input === "1"

	puts "Enter First number: "
	user_num1 = gets.chomp

	puts "Enter Second number: "
	user_num2 = gets.chomp

	puts add_num user_num1.to_i, user_num2.to_i
	# puts result

elsif user_input === "2"

	puts "Enter First number: "
	user_num1 = gets.chomp

	puts "Enter Second number: "
	user_num2 = gets.chomp

	puts sub_num user_num1.to_i, user_num2.to_i
	# puts result

elsif user_input === "3"

	puts "Enter First number: "
	user_num1 = gets.chomp

	puts "Enter Second number: "
	user_num2 = gets.chomp

	puts mul_num user_num1.to_i, user_num2.to_i
	# puts result

elsif user_input === "4"

	puts "Enter First number: "
	user_num1 = gets.chomp

	puts "Enter Second number: "
	user_num2 = gets.chomp

	puts div_num user_num1.to_i, user_num2.to_i
	# puts result
end