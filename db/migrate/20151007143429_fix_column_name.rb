class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :admin_products, :type, :subcategory
  end
end
