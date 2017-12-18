class Font < ApplicationRecord
  belongs_to  :style_method
  has_many  :text_fonts
  has_many  :texts, through: :text_fonts
end
