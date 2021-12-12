Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # USER
  post "/users" => "users#create"
  delete "/users/:id" => "users#destroy"

  # ITEM
  post "/items" => "items#create"

  # CATEGORY
  post "/categories" => "categories#create"
end
