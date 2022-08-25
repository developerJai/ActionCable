json.message do
  json.id @message.id
  json.content @message.content
  json.created_at @message.created_at
end