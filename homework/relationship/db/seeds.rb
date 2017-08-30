# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

	Book.create([
		{title: 'Harry Potter 1', author_id: 1}
	])

	Author.create([
		{name:'J. K. Rowling'}
	])
