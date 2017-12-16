class Template < ApplicationRecord
  mount_uploader  :image, ImageUploader
  belongs_to  :gender
  belongs_to  :style_method
  belongs_to  :size
end
