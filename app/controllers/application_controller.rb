class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # Needed in Codespaces to skip security checks (otherwise the request will get denied)
  skip_before_action :verify_authenticity_token unless Rails.env.production?
end
