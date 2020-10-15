class PlayerPokemon < ApplicationRecord
  belongs_to :player
  belongs_to :pokemon
end
