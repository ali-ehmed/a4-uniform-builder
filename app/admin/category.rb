ActiveAdmin.register Category do
  permit_params :garment_category, :acs_garment_category_description, :acs_garment_category_code, :gender_id, sports: []
  menu parent: "Uniform Builder"


  form do |f|
    f.inputs "Details" do
      f.input :gender_id, as: :select, collection: Gender.all.collect{|gender| [gender.gender, gender.id]}
      f.input :garment_category
      f.input :acs_garment_category_description
      f.input :acs_garment_category_code
      f.input :sports ,as: :check_boxes, collection: Sport.all.collect{|sport| [sport.sport_name, sport.id]}
    end
    f.actions 
  end
end
