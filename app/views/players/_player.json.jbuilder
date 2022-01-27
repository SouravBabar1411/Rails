json.extract! player, :id, :player_name, :player_country, :player_game, :created_at, :updated_at
json.url player_url(player, format: :json)
