require 'sinatra'
require 'sinatra/reloader' if development?

get "/manga" do 
	"Melson"
end


get "/manga/new" do
	"NEW"
end

get "/manga/:id" do
	"SHOW"
end

post "/manga" do 
	"CREATE"
end

get "/manga/:id/edit" do
	"EDIT"
end