ActiveAdmin.register UniformBuilder do
	permit_params :style_id, :sport_id, :category, :gender_id, :type, :photo, :color_id, :placement_id
	
end
