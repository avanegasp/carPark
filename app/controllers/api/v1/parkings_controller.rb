class Api::V1::ParkingsController < ApplicationController

  def index
    @parkings = Parking.all
    render json:@parkings
  end
end
