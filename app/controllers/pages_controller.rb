class PagesController < ApplicationController
  skip_before_action :access_control, only: [:index]

  def index
    @user_session = UserSession.new
  end
end
