class Category < ApplicationRecord
  belongs_to 	:gender
  has_many 		:styles
  has_many    :sport_categories
end
