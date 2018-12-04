class BookingsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking = Booking.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking = Booking.new(booking_params)
    @booking.restaurant = @restaurant
    if @booking.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
