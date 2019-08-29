class InterestsController < ApplicationController
  def new
    @interest = Interest.new
    @user = current_user
  end

  def create
    @interest = Interest.new
    @interest.user = current_user
    @interest.sport = Sport.find(interest_params[:sport_id])
    @interest.save
    redirect_to user_dashboard_path
  end

  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy
    redirect_to user_dashboard_path
  end

  private

  def interest_params
    params.require(:interest).permit(:sport_id)
  end
end
