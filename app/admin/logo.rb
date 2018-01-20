ActiveAdmin.register Logo do
  permit_params :category, :image, :placement_id, :selected_colour, :factory_graphic_code, :layout_factory_code
  menu parent: "Uniform Builder"

  action_item :add, only: :show do
    link_to "New Logo", :new_admin_logo
  end
end
