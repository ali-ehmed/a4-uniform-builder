class Category < ApplicationRecord
  belongs_to 	:gender
  has_many 		:styles
end
