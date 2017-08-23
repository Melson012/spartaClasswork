class PostsController < Sinatra::Base


	#set roots as the parent-directory of teh current file
	set :root, File.join(File.dirname(__FILE__),'..')

	#set the view directory correctly
	set :view, Proc.new {File.join(root, 'views')}

	configure :development do
		register Sinatra::Reloader
		
	end


	get "/" do
		"INDEX"
	end


	get '/new' do

		"NEW"
	end


	get '/:id' do
		
		"SHOW"

	end


	post "/" do 

		"CREATE"
	end


	put "/:id" do

		"UPDATE #{params[:id]}"
	end

	delete "/:id" do 

		"DELETE #{params[:id]}"
	end

	get "/:id/edit" do
		
		"EDIT"
	end


end