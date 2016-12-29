class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # Editing UnderConstruction block causes it's clear generator to not work
  def disable_navigation
    @disable_navigation = true
  end

  private

  def current_user
    @current_user ||= Admin::User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
