json.array! @messages do |m|
  json.id = m[:id]
  json.user_id = m[:user_id]
  json.room_id = m[:room_id]
  json.content = m[:content]
  json.sender = m[:sender]
  json.club_name = m[:club_name]
  json.user_name = m[:user_name]
end
