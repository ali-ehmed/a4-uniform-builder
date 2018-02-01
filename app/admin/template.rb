ActiveAdmin.register Template do
  permit_params :style_method_id, :price_id, :sport_id, :decoration_id, :placement_id,
                :factory_graphic_code, :svg, :layout_factory_code, :layouts

  menu parent: "Uniform Builder"

  #
  # form do |f|
  #   f.inputs "Details" do
  #     f.input :code
  #     f.input :decoration_available_image
  #     f.input :decoration_available_string
  #     f.input :stellar_code
  #     f.input :standard_size
  #     f.input :measurement
  #   end
  #   f.actions
  # end
end
