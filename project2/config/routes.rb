Rails.application.routes.draw do

  get '/performer_sessions/new', to: "performer_sessions#new", as: "performer_login"

  post '/performer_sessions', to: "performer_sessions#create"

  delete '/performer_sessions', to: "performer_sessions#destroy"

  # Categories
  resources :categories

  root to: "clients#index"

  ### CLIENTS ###


  get "/clients", to: "clients#index", as: "home"

  get "/clients/new", to: "clients#new", as: "new_client"

  post "/clients", to: "clients#create"

  get "/clients/:id/edit", to: "clients#edit", as: "edit_client"

  get "/clients/:id", to: "clients#show", as: "client_path"

## UPDATE ROUTE 
  # put "/clients/:id", to: "clients#update"

  patch "/clients/:id", to: "clients#update", as:"update_client"

  delete "/clients/:id", to: "clients#destroy"


  ### PERFORMERS ###

  get "/performers", to: "performers#index"

  get "/performers/new", to: "performers#new", as: "new_performer"

  post "/performers", to: "performers#create"

  get "/performers/:id", to: "performers#show", as: 'performer'

  get "/performers/:id/edit", to: "performers#edit", as: "edit_performer"

  patch "/performers/:id", to: "performers#update"

  delete "/performers/:id", to: "performers#destroy"

  ### CLIENT SESSIONS ###

  get "/sessions/new", to: "sessions#new", as: 'login'

  post "/sessions", to: "sessions#create", as: 'login_user'

  delete "/sessions", to: "sessions#destroy", as: "logout"

end
