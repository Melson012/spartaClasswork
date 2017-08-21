# loop do
# 	puts "Melson"
# end
# i = 0
# while i < 10 do
# 		puts "While: #{i}"
# 		i +=1
# end

# j = 0
# begin 
# 	puts "do While: #{j}"
# 	j+=1
# end while j < 10

# i = 0 
# until i>10 do 
# 	puts "until: #{i}"
# 	i +=1
# end

# for i in 0..5
# 	puts "for loops are awesome: #{i}"
# end

# 3.times do 
# 	puts "3 times"
# end

# names = ["melson","Sab","Will","Melinda","Joe","dyno","nav","kane","ollie","rich"]
# (0..names.length).each do |k|
# 	puts "#{names[k]}"
# end

# names.each { |name| puts name}

some_words = ["labyrinth", "dyslexia","superman"]
new_words = some_words.map do |words|
	words.reverse
end

puts new_words

some_numbers = [1,2,3,4,5,6,7,8,9,3,4,5,6,7,8,9,0,]

sum = some_numbers.reduce do |total, number|
	total+number
end
puts sum