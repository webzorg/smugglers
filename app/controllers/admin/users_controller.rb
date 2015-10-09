class Admin::UsersController < Admin::ApplicationController
  def new
    @admin_user = Admin::User.new
  end

  def create
    @admin_user = Admin::User.new(admin_user_params)
    if @admin_user.save
      redirect_to admin_root_path, notice: "You signed up!"
    else
      render "new"
    end
  end

  private
    def admin_user_params
      params.require(:admin_user).permit(:email, :password, :password_confirmation)
    end


end
