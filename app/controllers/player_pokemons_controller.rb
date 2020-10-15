class PlayerPokemonsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @playerpokemons = PlayerPokemon.all
  end

end
