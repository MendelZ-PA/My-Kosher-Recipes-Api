Rails.application.routes.draw do
  post "/users" => "users#create"
  get "/users" => "users#index"
  get "/users/:id" => "users#show"

  post "/sessions" => "sessions#create"
  get "/sessions" => "session#index"
  get "/sessions/:id" => "sessions#show"

  post "/ingredients" => "ingredients#create"
  get "/ingredients" => "ingredients#index"
  get "/ingredients/:id" => "ingredients#show"

  post "/recipes" => "recipes#create"
  get "/recipes" => "recipes#index"
  get "/recipes/:id" => "recipes#show"

  post "/pantry_items" => "pantry_items#create"
  get "/pantry_items" => "pantry_items#index"
  get "pantry_items/:id" => "pantry_items#show"

  post "/kosher_substitutes" => "kosher_substitutes#create"
  get "/kosher_substitutes" => "kosher_substitutes#index"
  get "/kosher_substitutes/:id" => "kosher_substitutes#show"
end
