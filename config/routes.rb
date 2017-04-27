Rails.application.routes.draw do
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
end
