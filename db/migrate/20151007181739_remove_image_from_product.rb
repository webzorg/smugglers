class RemoveImageFromProduct < ActiveRecord::Migration
  def change
    remove_column :admin_products, :image
  end
end
