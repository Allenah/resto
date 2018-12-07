class BookingsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking = Booking.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking = Booking.new(booking_params)
    @booking.restaurant = @restaurant
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def index
    @user = current_user
    # @booking = Booking.new
    @bookings = Booking.where(user_id: @user).order(created_at: :desc)
    # @restaurant = Restaurant.where(id: @booking.restaurant_id)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
