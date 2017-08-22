class Square

	attr_accessor :length

	def initialize length
		@length = length
	end

	def calculate_area 
	  self.length ** 2
	end

	def calculate_perimeter 
	  self.length * 4
	end

	def describe
		puts "Area of the square is #{calculate_area }. The perimeter is #{calculate_perimeter}"
	end

	

	def scale s
		self.length *= s
		 scaled_area = calculate_area 
		 scaled_perimeter = calculate_perimeter  
		puts "Area: #{scaled_area} Perimeter: #{scaled_perimeter}"
	end
end