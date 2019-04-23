Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/restaurants", to: "restaurants#index", as: "restaurants"
  get '/restaurants/all', to: 'restaurants#all', as: "all_restaurants"
  post "/restaurants", to: "restaurants#create"
  get "/restaurants/new", to: "restaurants#new", as: "new_restaurant"
  get "/restaurants/:id", to: "restaurants#show", as: "restaurant"

  put "/restaurants/:id", to: "restaurants#update"
  patch "/restaurants/:id", to: "restaurants#update"
  get "/restaurants/:id/edit", to: "restaurants#edit", as: "edit_restaurant"
  delete '/restaurants/:id', to: "restaurants#destroy", as: "delete_restaurant"

  post "/reviews", to: "reviews#create", as: "review"
  delete '/reviews/:id', to: "reviews#destroy", as: "delete_review"
  root 'restaurants#index'
end
