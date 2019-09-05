class ApplicationController < ActionController::Base
  protect_from_forgery with: :reset_session
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :address, :description, :photo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:age, :address, :description, :photo])
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
