Rails.application.routes.draw do

  # Categories
  get 'categories/index'

  get 'categories/show'

root to: "clients#index"


  ### CLIENTS ###

  get "/clients", to: "clients#index", as: "home"

  get "/clients/new", to: "clients#new", as: "new_client"

  post "/clients", to: "clients#create"

  get "/clients/:id", to: "clients#show", as: 'client_path'

  get "/clients/:id/edit", to: "clients#edit", as: "edit_client"

  put "/clients/:id", to: "clients#udpate"

  delete "/clients/:id", to: "clients#destroy"


  ### PERFORMERS ###

  get "/performers", to: "performers#index"

  get "/performers/new", to: "performers#new", as: "new_performer"

  post "/performers", to: "performers#create"

  get "/performers/:id", to: "performers#show", as: 'performer_path'

  get "/performers/:id/edit", to: "performers#edit", as: "edit_performer"

  put "/performers/:id", to: "performers#udpate"

  delete "/performers/:id", to: "performers#destroy"

end
