class StaticController < ApplicationController
	def home
		render :home
	end

	def hello
		@name = params[:name]
		respond_to do |format|
			format.json do
				render json: {message: "hello, #{@name}"}
			end
		end
		
	end
	def contact
		render :contact
		
	end
end