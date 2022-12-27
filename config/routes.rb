Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "inventories", to: "inventories#index"
  get "inventories/:id", to: "inventories#show"
  get "inventories/new", to: "inventories#new"
  post "inventories", to: "inventories#create"
  get "inventories/:id/edit", to: "inventories#edit"
  patch "inventories/:id", to: "inventories#update"
  delete "inventories/:id", to: "inventories#destroy"
end
