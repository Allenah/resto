class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(reviews_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.booking = Booking.where(restaurant_id: @restaurant).first
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def reviews_params
    params.require(:review).permit(:description, :rating)
  end

end
