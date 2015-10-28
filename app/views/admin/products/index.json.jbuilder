json.array!(@admin_products) do |admin_product|
  json.extract! admin_product, :id, :sku, :price, :display, :volume, :brand, :giftbox, :subcategory, :country, :region, :category, :age, :abv, :image, :description, :status
  json.url admin_product_url(admin_product, format: :json)
end
