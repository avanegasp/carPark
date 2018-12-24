class VehiclesController < ApplicationController

  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.find(params[:id])
  end

  def create
    @vehicle = Vehicle.find(params[:id])
  end

  private
  def vehicle_params
    params.require(:vehicle).permit(:plate, :vehicle_type)
  end

end
