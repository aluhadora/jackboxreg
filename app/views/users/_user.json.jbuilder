json.extract! user, :id, :name, :token, :status, :streamer_id, :created_at, :updated_at
json.url user_url(user, format: :json)
