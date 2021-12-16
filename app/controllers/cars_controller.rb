class CarsController < ApplicationController
  def index
    @cars = Car.all

    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude
      }
    end
  end

  def show
    @car = Car.find(params[:id])
  end
end
