class UserSessionsController < ApplicationController
  def new
  end

  def create
    email = params.require(:email).permit!
    password = params.require(:password).permit!

    user = User.authenticate(email, password)

    if user
      session[:user_id] = user.id
      redirect_to root_path, :notice => "Logged in!"
    else
      flash.now.alert = "Incorrect email or password. Please try again."
      render "new"
    end
  end

  def login
  end
end
