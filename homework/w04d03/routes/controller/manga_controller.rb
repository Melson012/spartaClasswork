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
		review: "Inhabit hearing perhaps on ye do no. It maids decay as there he. Smallest on suitable disposed do although blessing he juvenile in. Society or if excited forbade. Here name off yet she long sold easy whom. Differed oh cheerful procured pleasure securing suitable in. Hold rich on an he oh fine. Chapter ability shyness article welcome be do on service.",
	},
	{
		id: 1,
		title: "Naruto",
		rating: "7",
		review: "Raising say express had chiefly detract demands she. Quiet led own cause three him. Front no party young abode state up. Saved he do fruit woody of to. Met defective are allowance two perceived listening consulted contained.",
	},
	{
		id: 2,
		title: "One Piece",
		rating: "9",
		review: "In as of whole as match asked. Pleasure exertion put add entrance distance drawings. In equally matters showing greatly it as. Want name any wise are able park when. Saw vicinity judgment remember finished men throwing.",
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