ActiveAdmin.register Style do
  permit_params :style_code,:acs_style,:sport_id,:gender_id,:style_category,:color_description,:category_id,
  :style_features,:front,:back, :thumbnail,colors: [], sizes: [],placements: [],decorations:[]
  menu parent: "Uniform Builder"


  form do |f|
    f.inputs "Details" do
      f.input :style_code
      f.input :acs_style
      f.input :style_category, as: :select, collection: ["Stock", "Sublimation"]
      f.input :color_description
      f.input :style_features


      f.input :sport_id, as: :select, collection: Sport.all.collect{|sport| [sport.marketing_category , sport.id]}
      f.input :gender_id, as: :select, collection: Gender.all.collect{|gender| [gender.gender, gender.id]}
      f.input :category_id, as: :select, collection: Category.all.collect{|category| [category.garment_category, category.id]}


      f.input :front
      f.input :back
      f.input :thumbnail

      
      f.input :colors,as: :check_boxes, collection: Color.all.collect{|color| [color.color_type, color.id]}

      f.input :sizes,as: :check_boxes, collection: Size.all.collect{|size| [size.size, size.id]}

      f.input :placements,as: :check_boxes, collection: Placement.all.collect{|placement| [placement.code, placement.id]}

      f.input :decorations,as: :check_boxes, collection: Decoration.all.collect{|decoration| [decoration.code, decoration.id]}
      # f.input :color_id, as: :select, collection:  Color.all.collect{|color| [color.color_type, color.id]}, multiple:true
      # f.input :placement_id, as: :select, collection:  Placement.all.collect{|placement| [placement.code, placement.id]}, multiple:true
      # f.input :decoration_id, as: :select, collection:  Decoration.all.collect{|decoration| [decoration.code, decoration.id]}, multiple:true

      # f.has_many :colors do |a|
      #   a.inputs "Method" do
      #     a.input :size_id, as: :select, collection:      Size.all.collect{|size| [size.size, size.id]}, multiple:true
      #   end
      # end

      # f.has_many :sizes do |a|
      #   a.inputs "Method" do
      #     a.input :code
      # end

    end
    f.actions
  end
end
