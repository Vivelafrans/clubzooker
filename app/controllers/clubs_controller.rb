class ClubsController < ApplicationController
  before_action :find_club, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query] && params[:query] != ""
      @clubs = Club.search_by_name_and_address("#{params[:query]}")
    else
      @clubs = Club.all
    end
  end

  def show
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(club_params)
    @club.admin = current_user
    save_club(@club)
  end

  def edit
  end

  def update
    @club = Club.new(club_params)
    save_club(@club)
  end

  def destroy
    @club.destroy
    redirect_to clubs_path
  end

  private

  def find_club
    @club = Club.find(params[:id])
  end

  def club_params
    params.require(:club).permit(:name, :address, :description, :photo, :photo_cache)
  end

  def save_club(club)
    if club.save
      redirect_to new_club_offer_path(club, Offer.new)
    else
      render :new
    end
  end
end
