Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # SESSIONS
  post "/sessions" => "sessions#create"

  # USER
  post "/users" => "users#create"
  delete "/users/:id" => "users#destroy"

  # ITEM
  post "/items" => "items#create"
  get "/items/:id" => "items#show"

  # CATEGORY
  post "/categories" => "categories#create"
  get "/categories/:id" => "categories#show"
  get "/categories" => "categories#index"

  # NOTE
  post "/notes" => "notes#create"
  get "/notes/:id" => "notes#show"

  # IMAGE
  post "/images" => "images#create"
  get "/images/:id" => "images#show"

  #SOCIAL POST
  post "/social_posts" => "social_posts#create"
  get "/social_posts/:id" => "social_posts#show"
end
