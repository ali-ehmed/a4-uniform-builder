ActiveAdmin.register Size do
  permit_params :size, :available, :size_country, :style_ids
  menu parent: "Uniform Builder"
  action_item :add, only: :show do
    link_to "New Size", :new_admin_size
  end
end
