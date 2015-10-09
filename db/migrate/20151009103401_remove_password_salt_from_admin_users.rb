class RemovePasswordSaltFromAdminUsers < ActiveRecord::Migration
  def change
    remove_column :admin_users, :password_salt
  end
end
