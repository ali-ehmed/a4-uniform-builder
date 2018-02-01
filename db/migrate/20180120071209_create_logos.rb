class CreateLogos < ActiveRecord::Migration[5.1]
  def change
    create_table :logos do |t|
      t.string    :image
      t.string    :category
      t.integer   :style_id
      t.integer   :placement_id
      t.string    :selected_colour
      t.integer   :gender_id
      t.string    :factory_graphic_code
      t.string    :layout_factory_code

      t.timestamps
    end
  end
end
