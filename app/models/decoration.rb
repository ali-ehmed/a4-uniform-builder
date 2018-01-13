class Decoration < ApplicationRecord
  has_many  				:texts
  has_many  				:graphics

	has_many    			:style_decorations
	has_many					:styles, through: :style_decorations
	belongs_to 				:placement
	# has_many 					:fonts
end
