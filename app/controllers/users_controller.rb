class UsersController < ApplicationController
  skip_before_action :access_control, only: [:create, :signup]

  def create
    @user = User.new(params.require(:user).permit!)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "signup"
    end
  end

  def signup
    @user = User.new
  end
end
