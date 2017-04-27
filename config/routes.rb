Rails.application.routes.draw do
<<<<<<< HEAD
  root to: "creatures#index"

  get "/favorites", to: "favorites#index", as: "favorites"
  get "/favorites/new", to: "favorites#new", as: "new_favorite"
  post "/favorites", to: "favorites#create"
  get "/favorites/:id", to: "favorites#show", as: "favorite"
  get "/favorites/:id/edit", to: "favorites#edit", as: "edit_favorite"
  patch "/favorites/:id", to: "favorites#update"
  delete "/favorites/:id", to: "favorites#destroy"
end

  get "/offers", to: "offers#index", as: "offers"
  get "/offers/new", to: "offers#new", as: "new_offer"
  post "/offers", to: "offers#create"
  get "/offers/:id", to: "offers#show", as: "offer"
  get "/offers/:id/edit", to: "offers#edit", as: "edit_offer"
  patch "/offers/:id", to: "offers#update"
  delete "/offers/:id", to: "offers#destroy"
=======
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  get '/items', to: 'items#index', as: 'items_path'
  get '/items/:category', to: 'items#by_category'
  get '/items/:id', to: 'items#show', as: 'item_path'
  get '/items/new', to: 'items#new', as: 'new_item_path'
  post '/items', to: 'items#create'
  get '/items/:id/edit', to: 'items#edit', as: 'edit_item_path'
  patch '/items/:id', to: 'items#update'
  delete '/items/:id', to: 'items#destroy'

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  post '/signup' => 'users#create'

>>>>>>> dfd48ed14ed77ea25874d5e6afa6c843eb25458b
end
