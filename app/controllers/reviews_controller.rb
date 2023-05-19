class ReviewsController < ApplicationController
  def new
    # On récupère l'instance du resto associé
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # On trouve le resto correspondant
    @restaurant = Restaurant.find(params[:restaurant_id])
    # On récupère le formulaire
    @review = Review.new(set_params)
    # On associe la review avec le resto
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show', status: :unprocessable_entity
    end
  end

  private

  def set_params
    params.require(:review).permit(:rating, :content)
  end
end
