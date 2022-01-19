json.extract! pokemon, :id, :name, :type_1, :type_2, :total, :hp, :attack, :defense, :sp_atk, :speed, :generation, :legendary, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
