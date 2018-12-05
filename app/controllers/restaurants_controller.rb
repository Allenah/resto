class RestaurantsController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    booking = Booking.where(restaurant_id: @restaurant.id)
    @reviews = Review.where(booking_id: booking.first.id)
  end

end
