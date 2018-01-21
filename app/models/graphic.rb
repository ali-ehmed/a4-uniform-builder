class Graphic < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to  :gender
  belongs_to  :decoration
  belongs_to  :placement
  has_many	  :graphic_style_methods
  has_many 	  :style_methods, :through => :graphic_style_methods
  has_many    :layouts
  has_many    :graphic_colors
  has_many    :colors, through: :graphic_colors
end
