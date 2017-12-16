class Text < ApplicationRecord
  belongs_to  :gender
  belongs_to  :decoration
  belongs_to  :placement
  has_many    :style_methods
  has_many    :fonts
  has_many    :colors
  accepts_nested_attributes_for :style_methods
  accepts_nested_attributes_for :fonts
  accepts_nested_attributes_for :colors

end
