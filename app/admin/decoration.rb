ActiveAdmin.register Decoration do
  permit_params :code, :description
  menu parent: "Others"


  form do |f|
    f.inputs "Details" do
      f.input :code
      f.input :description
    end
  end
end
