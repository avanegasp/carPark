class Api::V1::VehiclesController < ApplicationController

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

  private
  def vehicle_params
    params.require(:vehicle).permit(:plate, :vehicle_type)
  end
end
