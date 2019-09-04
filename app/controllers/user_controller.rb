class UserController < ApplicationController
  def index
    if params[:query] && params[:query] != ""
      @users = User.search_by_name_and_age("#{params[:query]}")
    else
      @users = User.all
    end
  end

  def dashboard
  end

  def show
    @user = User.find(params[:format])
  end

  def clubdashboard
  end
end
