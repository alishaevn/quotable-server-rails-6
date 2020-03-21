class ApplicationController < ActionController::Base
  # macros
  before_action :authorized # this requires the authorized method to run before any other action is taken
  helper_method :current_user
  helper_method :logged_in?

  def authorized
    redirect_to '/welcome' unless logged_in?
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
