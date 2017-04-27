Rails.application.routes.draw do
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

  get '/users/:id', to: 'users#show', as: 'user_path'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user_path'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get '/users/:id/favorites', to: 'favorites#index', as: 'favorites_path'
  post '/users/:id/favorites', to: 'favorites#create'
  get '/users/:id/offers', to: 'offers#index', as: 'offers_path'
  get '/users/:id/offers/:id', to: 'offers#show', as: 'offer_path'
  delete '/users/:id/offers/:id', to: 'offers#destroy'
  


  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  post '/signup' => 'users#create'

end
