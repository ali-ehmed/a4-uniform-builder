class Style < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :uniform_builders
  has_many :colors
end
