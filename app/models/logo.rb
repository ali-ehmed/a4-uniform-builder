class Logo < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :logo_colors
  has_many :colors, through: :logo_colors
end
