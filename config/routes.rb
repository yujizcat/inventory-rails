Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  # root to: "home#index"
  root to: "inventories#index"

  # resources :home
  # root "articles#index"
  get "home", to: "home#index"
  get "inventories", to: "inventories#index"
  get "inventories/:id", to: "inventories#show"
  get "inventories/new", to: "inventories#new"
  post "inventories", to: "inventories#create"
  get "inventories/:id/edit", to: "inventories#edit"
  patch "inventories/:id", to: "inventories#update"
  delete "inventories/:id", to: "inventories#destroy"
  delete "inventories", to: "inventories#destroyAll"
  get "categories", to: "categories#index"
  get "categories/:id", to: "categories#show"
  post "categories", to: "categories#create"
  delete "categories/:id", to: "categories#destroy"
end
