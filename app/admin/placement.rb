ActiveAdmin.register Placement do
  permit_params :code, :decoration_available_image, :decoration_available_string, :stellar_code,
                :standard_size, :measurement,:style_ids
  menu parent: "Uniform Builder"


  form do |f|
    f.inputs "Details" do
      f.input :code
      f.input :decoration_available_image
      f.input :decoration_available_string
      f.input :stellar_code
      f.input :standard_size
      f.input :measurement
    end
    f.actions
  end
end
