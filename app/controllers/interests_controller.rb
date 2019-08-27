class InterestsController < ApplicationController
  def new
    @interest = Interest.new
    @user = current_user
  end

  def create
    @interest = Interest.new
    @interest.user = current_user
    @sport = Sport.find(params[:sport_id])
    @interest.sport = @sport
  end

  def destroy
    @interest.destroy
    # redirect_to dashboard
  end
end
