require 'sinatra'
require 'sinatra/reloader' if development?

get "/manga" do 
	"MANGA Melson"
end


get "/manga/new" do
	"NEW MANGA"
end

get "/manga/:id" do
	"SHOW MANGA"
end

post "/manga" do 
	"CREATE MANGA"
end

get "/manga/:id/edit" do
	"EDIT MANGA"
end

put "/manga/:id" do 
	"UPDATE MANGA"
end

delete "/manga/:id" do 
	"DESTORY MANGA"
end