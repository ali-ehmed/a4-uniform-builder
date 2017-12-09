class Gender < ApplicationRecord
  has_many :gender_options
  has_many :uniform_builders
end
