json.extract! streamer, :id, :name, :token, :code, :game_status, :created_at, :updated_at
json.url streamer_url(streamer, format: :json)
