json.content @message.content
json.image @message.image
json.id @message.id
json.created_at @message.created_at.strftime("%Y/%m/%d %H:%M")
json.user_name @message.user.name
