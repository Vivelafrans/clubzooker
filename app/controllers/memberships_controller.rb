class MembershipsController < ApplicationController
  def index
    Membership.all
  end

  def new
    @membership = Membership.new
    @club = Club.find(params[:club_id])
  end

  def create
    @membership = Membership.new(params.require(:membership).permit(:status))
    @club = Club.find(params[:club_id])
    @membership.user = current_user
    @membership.club = @club

    if @membership.save
      redirect_to club_path(@club)
    else
      render :new
    end
  end

  def edit
    @club = Club.find(params[:club_id])
    @membership = Membership.find(params[:membership_id])
  end

  def update
    @membership = Membership.find(params[:id])
    @membership.update(params.require(:membership).permit(:status))
    redirect_to user_clubdashboard_path, notice: 'The request was send successfully.'
  end

  def destroy
    @club = Club.find(params[:club_id])
    @membership = Membership.find(params[:id])
    @membership.destroy
    redirect_to user_clubdashboard_path
  end
end
