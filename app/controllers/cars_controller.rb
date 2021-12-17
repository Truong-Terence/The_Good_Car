class CarsController < ApplicationController
  def index
    @cars = Car.all

    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude
        # info_window: render_to_string(partial: "info_window", locals: { car: car }),
        # image_url: helpers.asset_url('marker.svg')
      }
    end
  end

  def show
    @car = Car.find(params[:id])
  end
end
