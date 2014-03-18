class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :restore_session, :access_control

  def access_control
    redirect_to root_path, :alert => "Please sign in first." unless signed_in?
  end

  def restore_session
    begin
      @current_user = User.find(session[:user_id]) unless !session[:user_id]
    rescue ActiveRecord::RecordNotFound
      reset_session
      redirect_to root_path, :alert => "User not found."
    end
  end

  helper_method :signed_in?
  def signed_in?
    !@current_user.nil?
  end
end
