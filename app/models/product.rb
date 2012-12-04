class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title

  mount_uploader :image_url, ProductImageUploader
end
