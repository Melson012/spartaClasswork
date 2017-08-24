class PostsController < Sinatra::Base



	$posts = [
		{
			id: 0,
			title: 'Post 1',
			content: 'This is the First post'
		},
		{
			id: 1,
			title: 'Post 2',
			content: 'This is the Second post'
		},
		{
			id: 2,
			title: 'Post 3',
			content: 'This is the Third post'
		}
	]

	#set roots as the parent-directory of teh current file
	set :root, File.join(File.dirname(__FILE__),'..')

	#set the view directory correctly
	set :view, Proc.new {File.join(root, 'views')}

	configure :development do
		register Sinatra::Reloader
	end


	get "/" do
		@title = "Blog Posts ------------ "
		@posts = $posts

		erb :'posts/index'
	end


	get '/new' do

		erb :'posts/new'
	end


	get '/:id' do
		
		parameter = params[:id].to_i 

		@posts = $posts[parameter]
		

		erb :'posts/show'

	end


	post "/" do 

		id = $posts.length
		new_post = {
			id: id,
			title: params[:title],
			content: params[:content]
		}

		$posts.push new_post

		redirect "/"
	end


	put "/:id" do

		"UPDATE #{params[:id]}"
	end

	delete "/:id" do 

		"DELETE #{params[:id]}"
	end

	get "/:id/edit" do
		
		parameter = params[:id].to_i 

		@posts = $posts[parameter]

		erb :'posts/edit'
	end


end