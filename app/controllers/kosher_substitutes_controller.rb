class KosherSubstitutesController < ApplicationController
  def create
    kosher_substitute = KosherSubstitute.new(
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

  def index
    @kosher_substitutes = KosherSubstitute.all
    render json: @kosher_substitutes.as_json
  end

  def show
    @kosher_substitute = KosherSubstitute.find(params[:id])
    render json: @kosher_substitute.find_by(params[:id]).as_json
  end
end
