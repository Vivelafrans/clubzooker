class OffersController < ApplicationController
  def index
    Offer.all
  end

  def new
    @offer = Offer.new
    @club = Club.find(params[:id])
  end

  def create
    @offer = Offer.new
    @club = Club.find(params[:id])
    @offer.club = @club
    @sport = Sport.find(params[:sport_id])
    @offer.sport = @sport
  end

  def destroy
    @offer.find(params[:id])
    @offer.destroy
    redirect_to user_dashboard_path
  end
end

