ActiveAdmin.register Graphic do
  permit_params :default_layers, :category, :price_id, :custom_fee, :custom_graphic, :method_id, :group, :graphic_type, :sport_id,:gender_id, :factory_graphic_code,:decoration_id,:placement_id,:layout_factory_code,
                :category, :image, style_methods: [], layout_ids: [] #, colors: []

  menu parent: "Uniform Builder"


  index do
    column :id
    column :image
    column :category
    column :svg_default_layers
    column :svg_default_colors
    column :sport_id
    actions
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Details" do
      f.input :category,as: :select, collection:  Graphic::GRAPHIC_CATEGORIES.collect{ |category| [category, category]}
      # f.input :decoration_id,as: :select, collection:  Decoration.all.collect{|decoration| [decoration.code,decoration.id]}
      f.input :sport_id,as: :select,      collection:  Sport.all.collect{|sport| [sport.sport_name, sport.id]}
      # f.input :colors,as: :check_boxes, collection: Color.all.collect{|c| [c.colour_code,c.id]}
      f.input :factory_graphic_code
      f.input :placement_id,as: :select, collection:  Placement.all.collect{|placement| [placement.code,placement.id]}
      f.input :layout_factory_code
      f.input :image
      f.input :default_layers, input_html: { value: f.object.default_layers.to_json }, as: :hidden
      li do
        f.label :default_colors
        div id: :display_graphic_default_colors do
          if f.object.svg_default_colors.present?
            f.object.svg_default_colors.split(',').each do |color|
              span style: "background: #{color}; padding: 4px 12px; margin-right: 4px;"
            end
          end
        end
      end
      f.input :custom_graphic
      f.input :custom_fee
      f.input :layout_ids, as: :check_boxes, collection: Layout.all.collect{|l| [l.layout1, l.id]}
      f.input :style_methods,as: :check_boxes, collection: StyleMethod.all.collect{|s_m| [s_m.code,s_m.id]}


      # f.input :gender_id,as: :select,     collection:  Gender.all.collect{|gender| [gender.gender, gender.id]}
      # f.input :category
      # f.input :group
      # f.input :graphic_type
      # f.input :price_by_method
      # f.input :price_to_factory
      # f.input :description

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
