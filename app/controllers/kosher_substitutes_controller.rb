class KosherSubstituteController < ApplicationController
  def create
    kosher_substitute = Kosher_substitute.new(
      name: params[:name],
      ingredient_id: params[:ingredient_id],
      brand: params[:brand],
      url: params[:url],
    )
    if kosher_substitute.save
      render json: { message: "Kosher substitute ingredient created successfully" }, status: :created
    else
      render json: { errors: kosher_substitute.errors.full_messages }, status: :bad_request
    end
  end
end
