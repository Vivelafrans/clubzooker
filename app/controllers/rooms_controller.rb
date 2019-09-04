class RoomsController < ApplicationController
  def new
    @room = Room.new
    @user = current_user
    @club = Club.find(params[:id])
  end

  def create
    @room = Room.new
    @user = current_user
    @room.user_id = @user.id
    @club = Club.find(params[:club_id])
    @room.club = @club
    @room.save!
    redirect_to new_club_room_message_path(@club, Room.last, @message)
  end
end
