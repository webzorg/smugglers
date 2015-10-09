class AddGiftboxToProduct < ActiveRecord::Migration
  def change
    add_column :products, :giftbox, :boolean
  end
end
