class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :restore_session

  def restore_session
    @current_user = User.find(session[:user_id]) unless !session[:user_id]
  end

  helper_method :signed_in?
  def signed_in?
    !@current_user.nil?
  end
end
