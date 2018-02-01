ActiveAdmin.register Logo do
  menu parent: "Uniform Builder"

  action_item :add, only: :show do
    link_to "New Logo", :new_admin_logo
  end

  index do
    column :id
    column :image
    column :category
    column :svg_default_layers
    column :svg_default_colors
    actions
  end

  show do
    attributes_table do
      row :id
      row :image
      row :category
      row :svg_default_layers
      row :svg_default_colors
      row :created_at
      row :updated_at
      row :placement_id
      row :factory_graphic_code
      row :layout_factory_code
    end
  end

  permit_params :default_layers, :category, :image, :placement_id, :selected_colour, :factory_graphic_code, :layout_factory_code

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Logo" do
      f.input :image, as: :file
      f.input :category
      f.input :default_layers, input_html: { value: f.object.default_layers.to_json }, as: :hidden
      li do
        f.label :default_colors
        div id: :display_logo_default_colors do
          if f.object.svg_default_colors.present?
            f.object.svg_default_colors.split(',').each do |color|
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
