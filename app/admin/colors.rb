ActiveAdmin.register Color do
  permit_params :colour_code, :color_type, :colour_descriptions, :md_no, :pms_no, :is_tile_one, :is_tile_two,
                :is_tile_three, :heat_transfer, :screen_print, :tackle_twill, :hex_code, :tile_text_color
  menu parent: "Uniform Builder"


  form do |f|
    f.inputs "Details" do
      f.input :is_tile_one
      f.input :is_tile_two
      f.input :is_tile_three
      f.input :heat_transfer
      f.input :screen_print
      f.input :tackle_twill
      f.input :colour_code
      f.input :hex_code
      f.input :tile_text_color
      f.input :md_no
      f.input :pms_no
      f.input :colour_descriptions
      f.input :text_id, as: :select, collection: Text.all.collect{|text| [text.text_type, text.id]}
    end
    f.actions
  end
end
