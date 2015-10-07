
desc "Upload images."
task :upload_images => :environment do
  @images = Dir["#{RAILS_ROOT}/public/tobeuploadedimages/*.*"]
  for image in @images
    Admin::Product.create(:image => File.open(image))
  end
end
