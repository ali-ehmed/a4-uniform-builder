ActiveAdmin.register UniformBuilder do
	permit_params :style_id, :sport_id, :category, :gender_id, :type, :photo, :color_id, :placement_id


	form do |f|
		f.input :style_id, as: :select,  collection: Style.all.collect{|style| [style.name, style.id]}
		f.input :sport_id, as: :select,  collection: Sport.all.collect{|sport| [sport.name, sport.id]}
		f.input :color_id, as: :select,  collection: Color.all.collect{|color| [color.name, color.id]}
		f.input :gender_id, as: :select, collection: Gender.all.collect{|gender| [gender.name, gender.id]}
		f.input :category
		f.input :type
		f.input :placement_id
		f.input :photo
		f.actions
	end

end
