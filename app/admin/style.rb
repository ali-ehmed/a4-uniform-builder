ActiveAdmin.register Style do
  permit_params :style_code,:acs_style,:gender_id,:style_category,:colour_description,:category_id,
  :style_features,:front,:back, :thumbnail,color_ids: [], sizes: [],placements: [],decorations:[], sport_ids: []
  menu parent: "Uniform Builder"

  action_item :add, only: :show do
    link_to "New Style", :new_admin_style
  end

  form do |f|
    f.inputs "Details" do
      f.input :style_code
      f.input :acs_style
      f.input :style_category, as: :select, collection: ["Stock", "Sublimation"]
      f.input :colour_description
      f.input :style_features


      #f.input :sport_id, as: :select, collection: Sport.all.collect{|sport| [sport.sport_name , sport.id]}
      f.input :gender_id, as: :select, collection: Gender.all.collect{|gender| [gender.gender, gender.id]}
      f.input :category_id, as: :select, collection: Category.all.collect{|category| [category.garment_category, category.id]}


      f.input :front
      f.input :back
      f.input :thumbnail
    end
    panel "Sizes" do
      f.input :sizes,as: :check_boxes, collection: Size.all.collect{|size| [size.size, size.id]}
    end
    panel "Placements" do
      f.input :placements,as: :check_boxes, collection: Placement.all.collect{|placement| [placement.code, placement.id]}
    end
    panel "Decorations" do
      f.input :decorations,as: :check_boxes, collection: Decoration.all.collect{|decoration| [decoration.code, decoration.id]}
    end
    panel "Tiles" do
      f.input :color_tiles, as: :select,id: "tiles_show_hide", collection: ["1 Tile", "2 Tiles", "3 Tiles"], :selected => '3 Tiles'
      div class: 'panel' do
        div class: 'colors_table' do
          table do
            tr do
              th 'Tile 1', id: "one_tile_th"
              th 'Tile 2', id: "two_tile_th"
              th 'Tile 3', id: "three_tile_th"
            end

            td id: "one_tile" do
              f.input :color_ids, as: :check_boxes,label: false,collection: Color.where(is_tile_one: true).collect{|color| [color.colour_code, color.id]}
            end
            td id: "two_tile" do
              f.input :color_ids, as: :check_boxes, label: false, collection: Color.where(is_tile_two: true).collect{|color| [color.colour_code, color.id]}
            end
            td id: "three_tile" do
              f.input :color_ids, as: :check_boxes, label: false, collection: Color.where(is_tile_three: true).collect{|color| [color.colour_code, color.id]}
            end
          end
        end
      end
    end

    panel "Sports" do
      div class: 'panel' do
        div class: 'sports_table' do
          ul class: "stylecheckBox" do
            li class: "" do
              f.input :sport_ids, as: :check_boxes,label: false,collection: Sport.all.collect{|sport| [sport.sport_name, sport.id]}
            end
          end
        end
      end
    end
    # column :color_ids, label: "Select Tile 1",as: :check_boxes, collection: Color.where(is_tile_one: true).collect{|color| [color.colour_code, color.id]}
    # column :color_ids, label: "Select Tile 2",as: :check_boxes, collection: Color.where(is_tile_two: true).collect{|color| [color.colour_code, color.id]}
    # column :color_ids, label: "Select Tile 3",as: :check_boxes, collection: Color.where(is_tile_three:true).collect{|color| [color.colour_code, color.id]}
    # panel "Tiles" do
    #   attributes_table_for partner do
    #     row :partner_terms_of_use_url
    #     row :partner_privacy_policy_url
    #   end
    # end

    f.actions
  end
end
