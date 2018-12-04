class RestaurantsController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :capacity, :photo, :cuisine, :location, :price)
  end

end
