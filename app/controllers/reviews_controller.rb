class ReviewsController < ApplicationController
  def new
    # FIND THE RESTAURANT
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to restaurant_path(@review.restaurant), status: :see_other
  end

  private

  # STRONG_PARAMS
  def review_params
    #=>{"content"=>"Very goooooood"}
    params.require(:review).permit(:content)
  end
end
