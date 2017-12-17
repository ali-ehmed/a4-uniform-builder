class Decoration < ApplicationRecord
  	has_many  				:texts
  	has_many  				:graphics
	has_many    			:style_decorations
	has_many				:styles, through: :style_decorations
end
