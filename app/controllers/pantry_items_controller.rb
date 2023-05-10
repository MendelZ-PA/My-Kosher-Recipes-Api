class PantryItemsController < ApplicationController
  def create
    pantry_item = PantryItem.new(
      measurement: params[:measurement],
      name: params[:name],
      user_id: params[:user_id],
      is_kosher: params[:is_kosher],
    )
    if pantry_item.save
      render json: { message: "Pantry item created successfully" }, status: :created
    else
      render json: { errors: pantry_item.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @pantry_items = PantryItem.all
  end

  def show
    @pantry_item = PantryItem.find(params[:id])
  end
end
