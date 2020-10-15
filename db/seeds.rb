# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'open-uri'
require 'json'

if (PlayerPokemon.count > 0)
  PlayerPokemon.delete_all
end

if (Player.count > 0)
  Player.delete_all
end

if (Pokemon.count > 0)
  Pokemon.delete_all
end

50.times do
  Player.create(name: Faker::Name.name_with_middle,
                age: Faker::Number.number(digits: 2),
                username: Faker::Name.first_name,
                password: Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3))
end

if Pokemon.count == 0
  data = []
  path = File.join(File.dirname(__FILE__), "./seeds/pokemons.json")
  records = JSON.parse(File.read(path))
  records.each do |record|
    object = {
      "code": record["id"],
      "name": record["name"],
      "imageURL": record["imageUrlHiRes"],
      "attack": record["attack"],
      "hp": record["hp"],
      "special": record["special"],
    }
    data << object
  end
  Pokemon.create!(data)
end

if PlayerPokemon.count == 0
  Player.find_each do |player|
    Pokemon.find_each do |pokemon|
      PlayerPokemon.create(player_id: player.id, pokemon_id: pokemon.id)
    end
  end
end