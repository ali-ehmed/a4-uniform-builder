class Color < ApplicationRecord
	belongs_to :design
	belongs_to :style
	belongs_to :sport
end
