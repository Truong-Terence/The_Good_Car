class CarsController < ApplicationController
  def index
    @cars = Car.all

    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @car = Car.find(params[:id])
  end
end
