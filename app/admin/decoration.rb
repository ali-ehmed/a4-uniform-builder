ActiveAdmin.register Decoration do
  permit_params :code, :description,:style_ids
  menu parent: "Uniform Builder"


  form do |f|
    f.inputs "Details" do
      f.input :code
      f.input :description
    end
    f.actions
  end
end
