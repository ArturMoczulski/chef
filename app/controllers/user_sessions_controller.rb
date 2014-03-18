class UserSessionsController < ApplicationController
  skip_before_action :access_control, only: [:create]

  def create
    email = params.require(:email)
    password = params.require(:password)

    user = User.authenticate(email, password)

    if user
      session[:user_id] = user.id
      redirect_to root_path, :notice => 'Welcome in Chef! Thank you for signing in!'
    else
      redirect_to root_path, :alert => "Incorrect email or password. Please try again."
    end
  end

  def signout
    reset_session
    redirect_to root_path, :notice => "You have been signed out."
  end
end
