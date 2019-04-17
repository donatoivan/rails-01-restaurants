Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/restaurants", to: "restaurants#index", as: "restaurants"
  post "/restaurants", to: "restaurants#create"
  get "/restaurants/new", to: "restaurants#new", as: "new_restaurant"
  get "/restaurants/:id", to: "restaurants#show", as: "restaurant"

  put "/restaurants/:id", to: "restaurants#update"
  patch "/restaurants/:id", to: "restaurants#update"
  get "/restaurants/:id/edit", to: "restaurants#edit", as: "edit_restaurant"

  root 'restaurants#index'
end
