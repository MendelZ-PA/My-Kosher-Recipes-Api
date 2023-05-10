class RecipesController < ApplicationController
  def create
    recipe = Recipe.new(
      name: params[:name],
      prep_time: params[:prep_time],
      instructions: params[:instructions],
      user_id: params[:user_id],
    )
    if recipe.save
      render json: { message: "Recipe created successfully" }, status: :created
    else
      render json: { errors: recipe.errors.full_messages }, status: :bad_request
    end
  end
end
