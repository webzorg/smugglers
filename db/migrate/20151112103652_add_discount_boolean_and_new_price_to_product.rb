class AddDiscountBooleanAndNewPriceToProduct < ActiveRecord::Migration
  def change
    add_column :products, :discount, :boolean
    add_column :products, :new_price, :decimal
  end
end
