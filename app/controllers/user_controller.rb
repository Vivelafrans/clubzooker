class UserController < ApplicationController
  def index
    @users = User.all
  end

  def dashboard
  end

  def show
    @user = User.find(params[:id])
  end

  def clubdashboard
  end
end
