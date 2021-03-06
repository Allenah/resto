class RestaurantsController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @restaurants = Restaurant.search_by_cuisine(params[:query])
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews.order(created_at: :desc)
    @review = Review.new
    @markers = [{
      lng: @restaurant.long,
      lat: @restaurant.lat
    }]
    # @restaurant = Restaurant.where.not(lat: nil, long: nil)

    #     @marker = @restaurant.map do |restaurant|
    #       {
    #         lng: restaurant.long,
    #         lat: restaurant.lat
    #       }
    #     end
  end

end
