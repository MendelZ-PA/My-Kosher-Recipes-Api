class IngredientsController < ApplicationController
  def create
    ingredient = Ingredient.new(
      measurement: params[:measurement],
      name: params[:name],
      recipe_id: params[:recipe_id],
      is_kosher: params[:is_kosher],
    )
    if ingredient.save
      render json: { message: "Ingredient created successfully" }, status: :created
    else
      render json: { errors: ingredient.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end
