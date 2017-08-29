class LoveController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  
  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") } 

  configure :development do
      register Sinatra::Reloader
  end


  get '/' do
      @posts = Love.all
      erb :'love/index'
  end

  get '/' do
      @posts = Like.all
      erb :'love/index'
  end
    
  get '/new'  do
    
    @post = Love.new
    @post.id =""
    @post.image =""
    @post.title =""
    @post.body =""

    erb :'love/new'
    
  end

  get '/:id' do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single post object available in the template
    @post = Love.find id
    
    erb :'love/show'
    
  end
    
  post '/' do
    
    post = Love.new

    post.image = params[:image]
    post.title = params[:title]
    post.body = params[:body]

    post.save

    redirect "/"
    
  end
    
    
    
  put '/:id'  do
    
    id = params[:id].to_i
    post = Love.find id

    post.image = params[:image]
    post.title = params[:title]
    post.body = params[:body]

    post.save

    redirect "/"

  end
    
  delete '/:id'  do
    
    id  = params[:id].to_i
    
    Love.destory id

    redirect "/"
    
  end
    
  get '/:id/edit'  do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single post object available in the template
    @post = Love.find id

    erb :'love/edit'
    
  end

end