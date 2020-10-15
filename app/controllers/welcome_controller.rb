class WelcomeController < ApplicationController
  def index
    @player = Player.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    @player = "Not found"
  end
end
