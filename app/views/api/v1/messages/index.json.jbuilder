json.array! @messages do |msg|
  json.id msg.id
  json.content msg.content
  json.created_at msg.created_at
end