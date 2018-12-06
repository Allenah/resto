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
    @reviews = @restaurant.reviews
    @review = Review.new
    @restaurant = Restaurant.where.not(latitude: nil, longitude: nil)

        @marker =
          {
            lng: @restaurant.long,
            lat: @restaurant.lat,
          }
  end

end
