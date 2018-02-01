ActiveAdmin.register UniformBuilder,as: "View Unifrom Builder" do
	permit_params :style_id, :sport_id, :category, :gender_id, :uniform_type, :photo, :color_id, :placement_id
	menu parent: "Uniform Builder"


	form do |f|
		f.inputs "Details" do
			f.input :style_id, as: :select,  collection: Style.all.collect{|style| [style.name, style.id]}
			f.input :sport_id, as: :select,  collection: Sport.all.collect{|sport| [sport.sport_name, sport.id]}
			f.input :color_id, as: :select,  collection: Color.all.collect{|color| [color.color_type, color.id]}
			f.input :gender_id, as: :select, collection: Gender.all.collect{|gender| [gender.gender, gender.id]}
			f.input :category
			f.input :uniform_type
			f.input :placement_id
			f.input :photo
		end
		f.actions
	end

	index do
    render partial: "buttons", layout: "active_admin"

    column :style_id
		column :sport_id
		column :color_id
		column :gender_id
		column :category
		column :uniform_type
		column :placement_id
		column :photo

		actions
	end

end
