class Api::V1::SportsController < Api::V1::BaseController
  def index
    @sports = Sport.all
  end

  def search
    @sports = Sport.where("name ILIKE '%#{params[:query]}%'").limit(5)
  end
end
