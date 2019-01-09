class ParkingsController < ApplicationController

def index
  @parkings = Parking.all
  @vehicle = Vehicle.new
  @vehicles = Vehicle.all
end

def show
  @parking = Parking.find(params[:id])
end
end
