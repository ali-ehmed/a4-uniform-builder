ActiveAdmin.register Graphic do
  permit_params :category, :price_id, :custom_fee, :custom_graphic, :method_id, :group, :graphic_type, :sport_id,:gender_id, :factory_graphic_code,:decoration_id,:placement_id,:layout_factory_code,
                :image, style_methods: [], color_ids: [], layout_ids: []

  menu parent: "Uniform Builder"


  form do |f|
    f.inputs "Details" do
      f.input :decoration_id,as: :select, collection:  Decoration.all.collect{|decoration| [decoration.code,decoration.id]}
      f.input :sport_id,as: :select,      collection:  Sport.all.collect{|sport| [sport.sport_name, sport.id]}
      f.input :color_ids,as: :check_boxes, collection: Color.all.collect{|c| [c.colour_code,c.id]}
      f.input :factory_graphic_code
      f.input :placement_id,as: :select, collection:  Placement.all.collect{|placement| [placement.code,placement.id]}
      f.input :layout_factory_code
      f.input :image
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
