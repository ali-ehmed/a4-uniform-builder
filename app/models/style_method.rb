class StyleMethod < ApplicationRecord
  belongs_to  :text
  has_many    :templates
  has_many    :fonts

  has_many	:graphic_style_methods
  has_many 	:graphics, :through => :graphic_style_methods

  has_many	:text_style_methods
  has_many 	:texts, :through => :text_style_methods

end
