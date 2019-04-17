class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(review_params)
    redirect_to restaurant_path(@restaurant.id)
  end

  def destroy
    @review = Review.find(params[:id])
    @restaurant = @review.restaurant

    @review.destroy

    redirect_to restaurant_path(@restaurant)
  end

  private
  def review_params
    params.permit(:title, :content, :rating)
  end
end
