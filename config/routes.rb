Rails.application.routes.draw do
  root to: 'pages#home'
  get '/learnmore', to: "pages#learnmore", as: 'learnmore_path'

  post "/favorites", to: "favorites#create"
  delete "/favorites/:id", to: "favorites#destroy"

  get '/items', to: 'items#index', as: 'items_path'
  get '/items/edit/:id', to: 'items#edit', as: 'edit_item_path'
  get '/items/group/:group/:category', to: 'items#group', as:'group_item_path'
  get '/items/new', to: 'items#new', as: 'new_item_path'
  get '/items/:id', to: 'items#show', as: 'item_path'
  post '/items', to: 'items#create'
  get '/items/:id/offers/new', to: 'offers#new', as: 'new_offer_path'
  post '/items/:id/offers', to: 'offers#create'
  patch '/items/update/:id', to: 'items#update'
  delete '/items/destroy/:id', to: 'items#destroy'

  get '/users/:id', to: 'users#show', as: 'user_path'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user_path'
  patch '/users/update/:id', to: 'users#update', as:'update_user_path'
  delete '/users/:id', to: 'users#destroy'

  get '/users/:id/favorites', to: 'favorites#index', as: 'favorites_path'
  post '/users/:id/favorites', to: 'favorites#create'
  get '/users/:id/offers', to: 'offers#index', as: 'offers_path'
  get '/users/:id/offers/:id', to: 'offers#show', as: 'offer_path'

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  post '/signup' => 'users#create'


end
