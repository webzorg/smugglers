class AddPasswordDigestToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :password_digest, :string
  end
end
