ActiveAdmin.register Text do
  permit_params :factory_graphic_code, :decoration_id, :placement_id, :factory_graphic_code, :layout_factory_code,
  :price_id, :style_method_id#, colors: [], layout_ids: []
  menu parent: "Uniform Builder"

  action_item :add, only: :show do
    link_to "New Text", :new_admin_text
  end


  form do |f|
    f.inputs "Details" do
      f.input :decoration_id,   as: :select, collection:  Decoration.all.collect{|decoration| [decoration.code,decoration.id]}
      f.input :placement_id,    as: :select, collection:  Placement.all.collect{|placement| [placement.code,placement.id]}
      f.input :style_method_id, as: :select, collection:  StyleMethod.all.collect{|s_m| [s_m.code,s_m.id]}
      f.input :factory_graphic_code
      f.input :layout_factory_code

      # f.input :colors,as: :check_boxes, collection: Color.all.collect{|color| [color.colour_code, color.id]}
      #
      # f.input :layout_ids,      as: :check_boxes, collection: Layout.all.collect{|layout| [layout.layout1,layout.id]}

      # f.has_many :style_methods do |a|
      #   a.inputs "Method" do
      #     a.input :code
      #     a.input :description
      #     a.input :graphic_id, as: :select, collection:  Decoration.all.collect{|decoration| [decoration.code,decoration.id]}
      #     a.input :text_id, as: :select, collection:  Text.all.collect{|text| [text.category, text.id]}
      #   end
      # end
    end
    f.actions
  end
end
