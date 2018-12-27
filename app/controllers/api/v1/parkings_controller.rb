class Api::V1::ParkingsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    # @parkings = Parking.all
    parkings = Parking.all
    render json:parkings
  end

  def create
    parking = Parking.new(parking_params)
    if parking.save
      render json: parking
    else
      render json: { errors: parking.errors }, status: 422
    end
  end

  private
  def parking_params
    params.require(:parking).permit(:arrival_time, :exit_time, :rate, :vehicle_id)
  end
end
