class AddImageToAdminProducts < ActiveRecord::Migration
  def up
    add_attachment :admin_products, :image
  end

  def down
    remove_attachment :admin_products, :image
  end
end
