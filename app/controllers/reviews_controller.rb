class ReviewsController < ApplicationController

  def create
    @review = Review.create(review_params)
    redirect_to :back
  end

private
  params.require(:review).permit(:comment, :rating, :rental_id, :user_id)
end
