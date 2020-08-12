class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper

  #helper_method :current_user

  #  protected
  #  def current_user
  #      @current_user ||= User.find(session[:user_id]) if session[:user_id]
  #  end

  #  def log_in(user)
  #    session[:user_id] = user.id
  #  end
end
