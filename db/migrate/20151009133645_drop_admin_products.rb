class DropAdminProducts < ActiveRecord::Migration
  def change
    drop_table :admin_products
  end
end
