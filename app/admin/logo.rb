ActiveAdmin.register Logo do
  menu parent: "Uniform Builder"

  action_item :add, only: :show do
    link_to "New Logo", :new_admin_logo
  end

  permit_params :default_colors, :category, :image, :placement_id, :selected_colour, :factory_graphic_code, :layout_factory_code

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Logo" do
      f.input :image, as: :file
      f.input :category
      f.input :default_colors, as: :hidden
      li do
        f.label :default_colors
        div id: :display_default_colors do
          if f.object.default_colors.present?
            f.object.default_colors.split(',').each do |color|
              span style: "background: #{color}; padding: 4px 12px; margin-right: 4px;"
            end
          end
        end
      end
      f.input :factory_graphic_code
      f.input :layout_factory_code
    end
    f.actions
  end
end
