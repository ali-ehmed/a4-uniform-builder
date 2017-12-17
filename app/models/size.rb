class Size < ApplicationRecord
  	has_many  					:templates
	has_many	:style_sizes
	has_many	:styles, through: :style_sizes
end
