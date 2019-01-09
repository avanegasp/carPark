class VehiclesController < ApplicationController

  def index
    @vehicles = Vehicle.all
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def new
    @vehicle = Vehicle.find(params[:id])
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
        redirect_to "/"
    end
  end

  private
  def vehicle_params
    params.require(:vehicle).permit(:plate, :vehicle_type)
  end

end
