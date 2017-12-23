ActiveAdmin.register Text do
  permit_params :category, :group, :text_type, :sport_id,:gender_id,:size_id,:price_by_method,:factory_graphic_code,:decoration_id,:placement_id,:layout_factory_code,
                :decsription, style_methods: [], fonts: [], colors: []
  menu parent: "Uniform Builder"


  form do |f|
    f.inputs "Details" do
      f.input :gender_id,as: :select,     collection:  Gender.all.collect{|gender| [gender.gender, gender.id]}
      f.input :sport_id,as: :select,      collection:  Sport.all.collect{|sport| [sport.marketing_category, sport.id]}
      f.input :decoration_id,as: :select, collection:  Decoration.all.collect{|decoration| [decoration.code,decoration.id]}
      f.input :placement_id,as: :select, collection:  Placement.all.collect{|placement| [placement.code,placement.id]}
      f.input :category
      f.input :group
      f.input :text_type
      f.input :price_by_method
      f.input :factory_graphic_code
      f.input :layout_factory_code
      f.input :decsription
      f.input :style_methods,as: :check_boxes, collection: StyleMethod.all.collect{|s_m| [s_m.code,s_m.id]}
      f.input :fonts,as: :check_boxes, collection: Font.all.collect{|font| [font.font, font.id]}
      f.input :colors,as: :check_boxes, collection: Color.all.collect{|color| [color.color_type, color.id]}

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
