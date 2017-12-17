ActiveAdmin.register Category do
  permit_params :garment_category, :acs_garment_category_description, :acs_garment_category_code, :gender_id
  menu parent: "Others"


  form do |f|
    f.inputs "Details" do
      f.input :gender_id, as: :select, collection: Gender.all.collect{|gender| [gender.gender, gender.id]}
      f.input :garment_category
      f.input :acs_garment_category_description
      f.input :acs_garment_category_code
    end
    f.actions 
  end
end
