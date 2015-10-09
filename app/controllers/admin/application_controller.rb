class Admin::ApplicationController < ApplicationController

  def authorize
      redirect_to new_admin_session_path, alert: "Not Authorized" if current_user.nil?
  end

  before_action :authorize
end
