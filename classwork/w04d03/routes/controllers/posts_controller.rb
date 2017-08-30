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

		@posts = {
			id: "",
			title: "",
			content: "",
		}


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

		id = params[:id].to_i
		posts = $posts[id]

		# data is gathered in the params object
	  
	      
	    # get the post object from our data store
	    post = $posts[id];
	      
	    # update the values of the object with data from the request
	    post[:title] = params[:title];
	    post[:content] = params[:content];
	      
	    # save the post back to our data store ( at the spot it came from this time )
	    $posts[id] = post;
	      
	    # redirect the user to a GET route. We'll go back to the INDEX.
	    redirect "/";

	end

	delete "/:id" do 

		id = params[:id].to_i

		$posts.delete_at(id)

		redirect "/";
		
	end

	get "/:id/edit" do
		
		parameter = params[:id].to_i 

		@posts = $posts[parameter]
		

		erb :'posts/edit'
	end


end