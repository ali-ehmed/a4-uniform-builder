class Gender < ApplicationRecord
  has_many  :gender_options
  has_many  :uniform_builders
  has_many  :categories
  has_many  :texts
  has_many  :graphics
  has_many  :templates
  has_many	:styles
end
