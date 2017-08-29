class BooksController < ApplicationController
  # before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    render :"book/index"
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  	@num = params[:num]
  	render :"book/show"
  end

  # GET /posts/new
  def new
   	@num = params[:num]
   	render :"book/new"
  end

  # GET /posts/1/edit
  def edit
  	@num = params[:num]
  	render :"book/edit"
  end

  # POST /posts
  # POST /posts.json
  def create
  	redirect_to "/book/index"
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @num = params[:num]
  	render :"book/update"
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @num = params[:num]
  	render :"book/destroy"
  end

  private 
  	def book_params
  		params.require(:book).permit(:name, :author)
  	end

end