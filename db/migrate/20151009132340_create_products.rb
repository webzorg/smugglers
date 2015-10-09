class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :sku
      t.decimal :price
      t.string :display
      t.float :volume
      t.string :brand
      t.string :subcategory
      t.string :country
      t.string :region
      t.string :category
      t.integer :age
      t.float :abv
      t.text :description
      t.boolean :status

      t.timestamps null: false
    end
  end
end
