ActiveAdmin.register Font do
  permit_params :code, :font_code, :font_file, :font, :style_method_id, :text_id
  menu parent: "Uniform Builder"
  action_item :add, only: :show do
    link_to "New Font", :new_admin_font
  end
end
