class ReviewsController < ApplicationController
  def new
    # On récupère l'instance du resto associé
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # On récupère le formulaire
    @review = Review.new(set_params)
    # On trouve le resto correspondant
    @restaurant = Restaurant.find(params[:restaurant_id])
    # On associe la review avec le resto
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_params
    params.require(:review).permit(:rating, :content)
  end
end
