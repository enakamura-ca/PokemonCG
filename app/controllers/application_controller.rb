class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    if session[:player_id]
      @current_user ||= User.find(session[:player_id])
    else
      @current_user = nil
    end
  end
end
