class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    raise
  end

  def create
    @review = Review.new(reviews_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.booking = Booking.where(restaurant_id: @restaurant).first
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def reviews_params
    params.require(:review).permit(:description, :rating)
  end

end
