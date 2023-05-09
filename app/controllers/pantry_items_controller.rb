class PantryItemController < ApplicationController
  def create
    pantry_item = pantry_item.new(
      measurement: params[:measurement],
      name: params[:name],
      user_id: params[:user_id],
      is_kosher: params[:is_kosher],
    )
    if user.save
      render json: { message: "Pantry item created successfully" }, status: :created
    else
      render json: { errors: pantry_item.errors.full_messages }, status: :bad_request
    end
  end
end
