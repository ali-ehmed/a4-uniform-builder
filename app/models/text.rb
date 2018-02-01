class Text < ApplicationRecord
  belongs_to  :gender
  belongs_to  :decoration
  belongs_to  :placement

  has_many	:text_style_methods
  has_many 	:style_methods, :through => :text_style_methods

  has_many  :text_colors
  has_many  :colors, through: :text_colors

  # has_many    :text_fonts
  # has_many    :fonts, through: :text_fonts
  belongs_to  :font
  belongs_to  :size
  belongs_to  :style
  # accepts_nested_attributes_for :style_methods
  # accepts_nested_attributes_for :fonts
  # accepts_nested_attributes_for :colors
  #
end
