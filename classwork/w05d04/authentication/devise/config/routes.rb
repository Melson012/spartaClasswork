Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts
  root "users#index"
  get "/users/mypost" , to: "users#show" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end