class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(set_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def show
    # On a besoin de récupérer les variables @restaurant et @review
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  private

  def set_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
