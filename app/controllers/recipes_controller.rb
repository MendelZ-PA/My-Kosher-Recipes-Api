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

  def index
    @recipes = Recipe.all
    render json: @recipes.as_json
  end

  def show
    @recipes = Recipe.find(params[:id])
    render json: @recipe.find_by(params[:id]).as_json
  end
end
