class Movie < ActiveRecord::Base
  attr_accessible :cast, :duration, :genre, :rating, :title, :image
  mount_uploader :image, ImageUploader

  validates :cast, :duration, :genre, :rating, :title, :image, :presence => true
end
