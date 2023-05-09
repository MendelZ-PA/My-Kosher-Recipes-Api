Rails.application.routes.draw do
  post "users" => "users#create"

  post "sessions" => "sessions#create"

  post "ingredients" => "ingredients#create"

  post "recipes" => "recipes#create"

  post "pantry_items" => "pantry_items#create"

  post "kosher_substitutes" => "kosher_substitutes#create"
end
