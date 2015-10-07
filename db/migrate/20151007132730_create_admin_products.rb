class CreateAdminProducts < ActiveRecord::Migration
  def change
    create_table :admin_products do |t|
      t.string :sku
      t.decimal :price
      t.string :display
      t.float :volume
      t.string :brand
      t.string :type
      t.string :country
      t.string :region
      t.string :category
      t.integer :age
      t.float :abv
      t.string :image
      t.text :description
      t.boolean :status

      t.timestamps null: false
    end
  end
end
