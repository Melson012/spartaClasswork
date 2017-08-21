def say_hello

	puts "HELLO"

end



def add_numbers num, num1

	puts num + num1

end




def create_user name, course="WebDev2"

	puts "#{name} is #{course}"


end


say_hello
add_numbers 2,3
create_user "melson"
create_user "bob", "The Builder"

def say_more_words *words
	puts words
end

say_more_words "melson", "melson", "melson", "sdnasv"


def say what, *people

	people.each do |person|
		puts "hey #{person}, #{what}"
	end 
end

say "hello", "melson", "bob"

def add_numbers2 num1, num2

	 num1+num2
end

result  = add_numbers2 2,3
puts result