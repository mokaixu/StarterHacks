json.extract! message, :id, :phone_number, :text_message, :created_at, :updated_at
json.url message_url(message, format: :json)
