json.array! @sports do |sport|
  json.extract! sport, :id, :name, :teamsport, :intensity, :equipment
end
