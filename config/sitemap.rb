# Set the host name for URL creation
#SitemapGenerator::Sitemap.default_host = "http://www.example.com"

#SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
#end
SitemapGenerator::Sitemap.default_host = 'http://www.smugglers.ge'
SitemapGenerator::Sitemap.public_path = 'tmp/'
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'


SitemapGenerator::Sitemap.create do
  add root_path, priority: 0.7, changefreq: 'daily'
  add products_path, priority: 0.9, changefreq: 'daily'
  add contact_path, changefreq: 'daily'
  Product.find_each do |product|
    add product_path(product), lastmod: product.updated_at
  end
end

SitemapGenerator::Sitemap.ping_search_engines
