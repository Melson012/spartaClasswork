class MangaController < Sinatra::Base


	#set roots as the parent-directory of the current file
	set :root, File.join(File.dirname(__FILE__),'..')

	#set the view directory correctly
	set :view, Proc.new {File.join(root, 'views')}

	configure :development do
		register Sinatra::Reloader

	end

	$manga_collection = [{
		id: 0,
		title: "Dragon Ball Super",
		rating: "8",
		review: "Awesome",
	},
	{
		id: 1,
		title: "Naruto",
		rating: "7",
		review: "Nice",
	},
	{
		id: 2,
		title: "One Piece",
		rating: "9",
		review: "MADD",
	},
	]


	get "/" do
		@header = "MANGAS"

		@mangas = $manga_collection
		erb :"manga/index"
	end


	get '/new' do
		id = params[:id].to_i 
		@mangas = $manga_collection[id]

		erb :"manga/new"
	end


	get '/:id' do
		
		id = params[:id].to_i 
		@mangas = $manga_collection[id]

		erb :"manga/show"

	end


	post "/" do 

		id = $manga_collection.length
		new_Manga = {
			id: id,
			title: params[:title],
			rating: params[:rating],
			review: params[:review],
		}
		puts params
		$manga_collection.push new_Manga

		redirect "/"
	end


	put "/:id" do

		"UPDATE #{params[:id]}"
	end

	delete "/:id" do 

		"DELETE #{params[:id]}"
	end

	get "/:id/edit" do
		
		id = params[:id].to_i 
		@mangas = $manga_collection[id]

		erb :"manga/edit"
	end


end