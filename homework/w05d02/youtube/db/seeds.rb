# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Video.destroy_all
Video.create([
	{title: 'Mask Off', url: 'https://www.youtube.com/embed/xvZqHgFz51I', description: 'Published on May 5, 2017
"FUTURE" 
'},
	{title: 'Unforgetable', url: 'https://www.youtube.com/embed/CTFtOOh47oo', description: 'Published on Apr 13, 2017
"Unforgettable" 
'},
	{title: 'White Iverson', url: 'https://www.youtube.com/embed/CTFtOOh47oo', description: 'Published on Jul 19, 2015
Post Malone'}
	
])
