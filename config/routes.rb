Rails.application.routes.draw do
  # get "/", to: "products#sarch"
  # get "/search", to: ""
  post "/create", to: "products#create"
  get '/products/new', to: "products#new"
  get '/products/list', to: "products#list"
  post "/products/:id/destroy", to: "products#destroy"
  post "/products/:id/edit", to: "products#edit"
  post "/products/:id/update", to: "products#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
