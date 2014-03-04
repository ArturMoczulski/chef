class UsersController < ApplicationController
  def create
    @user = User.new(params.require(:user).permit!)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def new
    @user = User.new
  end

  def signup
    new
  end
end
