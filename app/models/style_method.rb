class StyleMethod < ApplicationRecord
  belongs_to  :text
  belongs_to  :graphic
  has_many    :templates
  has_many    :fonts
end
