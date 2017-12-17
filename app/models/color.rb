class Color < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to 					:design
	belongs_to 					:sport
	belongs_to					:text

  	has_many    :style_colors
	has_many 	:styles, :through => :style_colors

end
