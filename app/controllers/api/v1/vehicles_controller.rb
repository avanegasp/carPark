class Api::V1::VehiclesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    vehicles = Vehicle.all
    render json: vehicles
  end

  def create
    vehicle = Vehicle.new(vehicle_params)
    if vehicle.save
      render json: vehicle
    else
      render json: { errors: vehicle.errors}, status: 422
    end
  end

  def update
    vehicle  = Vehicle.find(params[:id])
    if vehicle.update(vehicle_params)
      render json: vehicle
    else
      render json: {errors: vehicle.errors}, status: 422
    end
  end

  def destroy
    vehicle = Vehicle.find(params[:id])
    vehicle.destroy

    head :no_content
  end

  private
  def vehicle_params
    params.require(:vehicle).permit(:plate, :vehicle_type)
  end
end
