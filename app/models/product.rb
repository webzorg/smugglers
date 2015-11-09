class Product < ActiveRecord::Base
  require 'csv'

  has_attached_file :image,
                    styles: { medium: "500x500>",
                              thumb: "200x200>" },
                    default_url: "/images/:style/missing.jpg"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      product_hash = row.to_hash.merge({:image => File.open("#{Rails.root}/public/tobeuploadedimages/#{row.to_hash["sku"]}.jpg")})
      product = Product.find_or_initialize_by(sku: product_hash["sku"])
      product.update(product_hash)

    end
  end
  scope :status, -> {where(status: true)}
  scope :giftbox, -> {where(giftbox: true)}
  paginates_per 50

end
