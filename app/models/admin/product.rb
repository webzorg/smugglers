class Admin::Product < ActiveRecord::Base
  require 'csv'

  has_attached_file :image,
                    styles: { medium: "500x500>",
                              thumb: "200x200>" },
                    default_url: "/images/:style/missing.jpg"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      product_hash = row.to_hash.merge({:image => File.open("#{Rails.root}/public/tobeuploadedimages/#{row.to_hash["sku"]}.jpg")})
      product = Admin::Product.find_by(sku: product_hash["sku"])

      if product
        product.update product_hash
      else
        Admin::Product.create! product_hash
      end
    end
  end
end
