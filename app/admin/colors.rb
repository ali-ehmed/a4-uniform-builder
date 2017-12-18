ActiveAdmin.register Color do
  permit_params :color_code, :color_type, :color_description, :md_no, :pms_no, :image
  menu parent: "Uniform Builder"


  form do |f|
    f.inputs "Details" do
      f.input :text_id, as: :select, collection: Text.all.collect{|text| [text.text_type, text.id]}
      f.input :color_code
      f.input :color_type
      f.input :md_no
      f.input :pms_no
      f.input :image
      f.input :color_description
    end
    f.actions
  end
end
