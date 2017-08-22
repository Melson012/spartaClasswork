require 'sinatra'
require 'sinatra/reloader' if development?

get "/manga" do 
	"Melson"
end

get "/manga/:id" do
	"SHOW"
end