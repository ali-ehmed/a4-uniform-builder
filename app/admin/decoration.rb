ActiveAdmin.register Decoration do
  permit_params :decoration_type, :thumbnail,:factory_graphic_code, :factory_layout_code, :custom_graphic, :custom_font_size, :custom_font, :custom_style,
                :style_method_id, :color_id, :price_id
  menu parent: "Uniform Builder"


  form do |f|
    f.inputs "Details" do
      f.input :style_method_id, as: :select, collection:  StyleMethod.all.collect{|s_m| [s_m.code,s_m.id]}
      f.input :color_id,        as: :select, collection:  Color.all.collect{|c| [c.colour_code,c.id]}
      f.input :custom_style
      f.input :custom_font
      f.input :custom_font_size
      f.input :custom_graphic
      f.input :factory_layout_code
      f.input :factory_graphic_code
      f.input :thumbnail
      f.input :decoration_type
    end
    f.actions
  end
end
