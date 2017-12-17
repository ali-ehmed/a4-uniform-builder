class Placement < ApplicationRecord
  	mount_uploader :decoration_available_image, ImageUploader
  	has_many  				:texts
  	has_many  				:graphics
	has_many				:style_placements
	has_many				:styles, through: :style_placements
end
