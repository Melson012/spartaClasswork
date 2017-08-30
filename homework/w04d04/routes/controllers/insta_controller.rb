class InstaController < Sinatra::Base


	$insta_post = [
		{
			id: 0,
			title: 'Picture 1',
			image: 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png',
			description: 'This is the First post',
		},
		{
			id: 1,
			title: 'Picture 2',
			image: 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png',
			description: 'This is the Second post',
		},
		{
			id: 2,
			title: 'Picture 3',
			image: 'https://i.pinimg.com/736x/33/b8/69/33b869f90619e81763dbf1fccc896d8d--lion-logo-modern-logo.jpg',
			description: 'This is the Third post',
		}
	]


	#set roots as the parent-directory of the current file
	set :root, File.join(File.dirname(__FILE__),'..')

	#set the view directory correctly
	set :view, Proc.new {File.join(root, 'views')}

	configure :development do
		register Sinatra::Reloader

	end

	get "/" do

		

		@post = $insta_post

		erb :'insta/index'
	end


	get '/new' do

		@post = {
			id: '',
			title: '',
			image: '',
			description: '',
		}


		erb :'insta/new'
	end


	get '/:id' do
		
		id = params[:id].to_i 
		@post = $insta_post[id]

		erb :'insta/show'
	end


	post "/" do 

		id = $insta_post.length

		new_Insta_post = {
			id: id,
			title: params[:title],
			image: params[:image],
			description: params[:description],
		}
		puts params[:title]

		$insta_post.push new_Insta_post

		redirect "/"
	end


	put "/:id" do

		id = params[:id].to_i 
		post = $insta_post[id]

		post[:title] = params[:title];
	    post[:content] = params[:content];
	    post[:description] = params[:description];

	    $insta_post[id] = post;

		redirect "/";

	end

	delete "/:id" do 

		id = params[:id].to_i

		$insta_post.delete_at(id)

		redirect "/";
		
	end

	get "/:id/edit" do
		
		id = params[:id].to_i 
		@post = $insta_post[id]
		

		erb :'insta/edit'
	end

end