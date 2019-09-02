class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def questionaire
  end

  def results
    puts params
    redirect_to root_path
  end
end
