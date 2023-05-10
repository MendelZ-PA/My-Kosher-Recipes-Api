Rails.application.routes.draw do
  POST "/users" => "users#create"
  GET "/users" => "users#index"
  GET "/users/:id" => "users#show"

  POST "/sessions" => "sessions#create"
  GET "/sessions" => "session#index"
  GET "/sessions/:id" => "sessions#show"

  POST "/ingredients" => "ingredients#create"
  GET "/ingredients" => "ingredients#index"
  GET "/ingredients/:id" => "ingredients#show"

  POST "/recipes" => "recipes#create"
  GET "/recipes" => "recipes#index"
  GET "/recipes/:id" => "recipes#show"

  POST "/pantry_items" => "pantry_items#create"
  GET "/pantry_items" => "pantry_items#index"
  GET "pantry_items/:id" => "pantry_items#show"

  POST "/kosher_substitutes" => "kosher_substitutes#create"
  GET "/kosher_substitutes" => "kosher_substitutes#index"
  GET "/kosher_substitutes/:id" => "kosher_substitutes#show"
end
