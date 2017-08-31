# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

	Book.create([
		{title: 'Harry Potter and the Philosophers Stone', author_id: 1},
		{title: 'Harry Potter and the Prisoner of Azkaban', author_id: 1},
		{title:'Charlie and the Chocolate Factory', author_id: 2},
		{title:'The BFG', author_id: 2}
	])

	Author.create([
		{name:'J. K. Rowling'},
		{name:'Roald Dahl'}
	])
