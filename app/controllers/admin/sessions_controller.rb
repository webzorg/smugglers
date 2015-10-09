class Admin::SessionsController < Admin::ApplicationController
  skip_before_action :authorize, only: [:new, :create]
  def new
     current_user ? redirect_to(admin_root_path) : render("new")
  end
  def create
    admin_user = Admin::User.find_by_email(params[:email])
    if admin_user && admin_user.authenticate(params[:password])
      session[:user_id] = admin_user.id
      redirect_to admin_root_path, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to admin_root_path, notice: "Logged Out!"
  end
end
