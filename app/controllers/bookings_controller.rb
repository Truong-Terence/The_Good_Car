class BookingsController < ApplicationController
  def index
    @bookings = Booking.all.where(user: current_user)
  end

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    @booking.save!

    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:car_id, :starts_at, :ends_at)
  end
end
