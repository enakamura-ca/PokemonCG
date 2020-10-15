class PokemonsController < ApplicationController
  def index
    if params[:search]
      @pokemons = Pokemon.find_by_name(params[:search])
    else
      @pokemons = Pokemon.all
    end
  end
end
