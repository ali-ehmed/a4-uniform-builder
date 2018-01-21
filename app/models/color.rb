class Color < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to 					:design
	belongs_to 					:sport
	belongs_to					:text

	has_many  :style_colors
	has_many 	:styles, :through => :style_colors

	has_many  :text_colors
	has_many  :texts, through: :text_colors
	belongs_to	:user

	has_many    :graphic_colors
	has_many    :graphics, through: :graphic_colors
end
