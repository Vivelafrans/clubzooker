class MessagesController < ApplicationController
  def index
    @club = Club.find(params[:club_id])
    @room = Room.find(params[:room_id])
    @messages = Message.where(room_id: params[:room_id])
  end

  def new
    @message = Message.new
    @club = Club.find(params[:club_id])
    @room = Room.find(params[:room_id])
  end

  def create
    @message = Message.new(params.require(:message).permit(:content))
    @user = current_user
    @club = Club.find(params[:club_id])
    @message.user_id = @user.id
    @room = Room.find(params[:room_id])
    @message.room_id = params[:room_id]
    @message.save!
    # redirect_to club_room_messages_path(@club, @room)
  end
end
