class UserController < ApplicationController
  def index
    @users = User.all
  end

  def dashboard
  end

  def show
    @user = User.find(params[:format])
  end

  def clubdashboard
  end
end
