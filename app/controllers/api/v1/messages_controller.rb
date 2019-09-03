class Api::V1::MessagesController < Api::V1::BaseController
  def create
    message = Message.new
    p params
    message.user_id = params[:user_id]
    message.room = Room.find(params[:room_id])
    message.content = params[:content]
    message.save!
  end

  def show
    raw = Message.where(room_id: params[:room_id])
    club = Club.find(params[:club_id])
    @messages = []
    raw.each do |m|
      object = {}
      object[:id] = m.id
      object[:user_id] = m.user_id
      object[:room_id] = m.room_id
      object[:content] = m.content
      object[:sender] = sender?(club, m)
      object[:club_name] = club.name
      object[:user_name] = User.find(m.user_id).name
      @messages << object
    end

    rescue Exception => error
      puts "////////////////////////////////"
      puts error
  end

  private

  def sender?(club, message)
    club.admin_id == message.user_id
  end
end
