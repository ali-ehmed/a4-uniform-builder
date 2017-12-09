class Sport < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :uniform_builders
  has_many :colors
end
