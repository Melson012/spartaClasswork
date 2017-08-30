Rails.application.routes.draw do

	root "books#index"
	get "/books/new", to: "books#new"
	get "/books/:num", to: "books#show"
	get "/books/:num/edit", to: "books#edit"
	post "/books", to: "books#create"
	put "/books/:num", to: "books#update"
	delete "books/:num", to: "books#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
