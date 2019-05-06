# Pokemon
# attributes
# name (string)
# base_experience (integer)
# image (text)
# stats (jsonb)
# types (string)
# weight (integer)
# height (integer)

require 'net/http'

(1..807).each do |number|
  uri = URI("https://pokeapi.co/api/v2/pokemon/#{number}")
  res = Net::HTTP.get(uri)
  data = JSON.parse(res)

  # Create Pokemon

  stats_data = data['stats']

  stats = {}.tap do |hsh|
    stats_data.each { |stat| hsh[stat.dig('stat', 'name')] = stat['base_stat'] }
  end

  types_array = []
  data['types'].each { |type| types_array << type['type']['name'] }
  types = types_array.join(', ')


  Pokemon.create(
    name: data['name'].titleize,
    base_experience: data['base_experience'],
    image_url: "https://img.pokemondb.net/artwork/large/#{data['name']}.jpg",
    stats: stats,
    types: types,
    height: data['height'],
    weight: data['weight']
  )
end
