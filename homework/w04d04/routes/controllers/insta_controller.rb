class InstaController < Sinatra::Base

	#set roots as the parent-directory of the current file
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

		"POST"
	end


	put "/:id" do

		"UPDATE"

	end

	delete "/:id" do 

		"DELETE"
		
	end

	get "/:id/edit" do
		
		"EDIT"
	end

end