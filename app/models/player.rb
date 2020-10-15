class Player < ApplicationRecord
  has_secure_password
  has_many :playerpokemons
  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
end
