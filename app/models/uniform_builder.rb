class UniformBuilder < ApplicationRecord
	mount_uploader :photo, ImageUploader
	belongs_to :sport
	belongs_to :style
	belongs_to :gender
	belongs_to :color
end
