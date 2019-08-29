class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @club = Club.find(params[:club_id])
    @user = current_user
  end

  def create
    @review = Review.new(review_params)
    @club = Club.find(params[:club_id])
    @user = current_user
    @review.club = @club
    @review.user = @user
    if @review.save
      redirect_to club_path(@club)
    else
      render :new, notice: 'Check your Review'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
