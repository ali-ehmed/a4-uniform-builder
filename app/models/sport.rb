class Sport < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :sport_image, ImageUploader

  has_many 	  :uniform_builders
  has_many 	  :colors
  has_many	  :styles
  has_many    :sport_categories
end
