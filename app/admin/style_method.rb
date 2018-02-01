ActiveAdmin.register StyleMethod, as: "Method" do
  permit_params :code, :description, :graphic_id, :text_id
  menu parent: "Uniform Builder"


  form do |f|
    f.inputs "Details" do
      f.input :graphic_id, as: :select, collection: Graphic.all.collect{|graphic| [graphic.category, graphic.id]}
      f.input :text_id, as: :select, collection: Text.all.collect{|text| [text.category, text.id]}
      f.input :code
      f.input :description
    end
    f.actions
  end
end
