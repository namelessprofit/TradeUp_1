Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'site#index'

  get '/items', to: 'items#index', as: 'items_path'
  get '/items/:category', to: 'items#by_category'
  get '/items/:id', to: 'items#show', as: 'item_path'
  get '/items/new', to: 'items#new', as: 'new_item_path'
  post '/items', to: 'items#create'
  get '/items/:id/edit', to: 'items#edit', as: 'edit_item_path'
  patch '/items/:id', to: 'items#update'
  delete '/items/:id', to: 'items#destroy'

end
