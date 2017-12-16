class Graphic < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to  :gender
  belongs_to  :decoration
  belongs_to  :placement
  has_many    :style_methods
end
