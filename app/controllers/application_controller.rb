class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # Editing UnderConstruction block causes it's clear generator to not work
  before_filter :redirect_to_under_construction

  # Will redirect all requests to under construction page
  def redirect_to_under_construction
    if request.host_with_port == UnderConstruction.config.host_name
      unless request.url =~ /(under_construction|email_storage)/
        redirect_to under_construction_index_path
      end
    end
  end

  private

    def current_user
      @current_user ||= Admin::User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
end
