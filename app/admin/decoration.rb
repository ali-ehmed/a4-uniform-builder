ActiveAdmin.register Decoration do
  permit_params :code, :description,:style_ids
  menu parent: "Others"


  form do |f|
    f.inputs "Details" do
      f.input :code
      f.input :description
    end
  end
end
