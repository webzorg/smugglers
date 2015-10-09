class AddGiftboxToAdminProducts < ActiveRecord::Migration
  def change
    add_column :admin_products, :giftbox, :boolean
  end
end
