class Person < ApplicationRecord
	validates :name, :age, :job, :gender, :Mobile_Number, :About, presence: true
	validates :name, format: {with: /\A[a-zA-Z]+\z/, 
		message: "Only allows letters" }
	validates :age, numericality: true
	validates :Mobile_Number, numericality: true


end
