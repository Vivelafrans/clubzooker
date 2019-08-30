class OffersController < ApplicationController
  def index
    Offer.all
  end

  def new
    @offer = Offer.new
    @club = Club.find(params[:club_id])
  end

  def create
    @offer = Offer.new
    @club = Club.find(params[:club_id])
    @offer.club = @club
    @sport = Sport.find(params[:offer][:sport_id])
    @offer.sport = @sport
    @offer.save
    redirect_to user_clubdashboard_path
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to user_clubdashboard_path
  end
end

