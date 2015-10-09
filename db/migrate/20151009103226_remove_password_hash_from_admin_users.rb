class RemovePasswordHashFromAdminUsers < ActiveRecord::Migration
  def change
    remove_column :admin_users, :password_hash
  end
end
