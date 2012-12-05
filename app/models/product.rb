class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title

  mount_uploader :image_url, ProductImageUploader

  validates :title, presence: true
  validates :image_url, presence: true
  validates :description, presence: true
end
