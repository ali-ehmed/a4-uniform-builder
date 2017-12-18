class Style < ApplicationRecord
  	mount_uploader :front, 		ImageUploader
  	mount_uploader :thumbnail,	ImageUploader
  	mount_uploader :back, 		ImageUploader

	has_many	:style_sizes
	has_many	:sizes, through: :style_sizes
  	
 	has_many	:style_colors
	has_many 	:colors, :through => :style_colors


	has_many   :style_decorations
	has_many	:decorations, through: :style_decorations

	has_many	:style_placements
	has_many	:placements, through: :style_placements
end
