class CreateStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :styles do |t|
      t.string :style_code
      t.string :acs_style
      t.integer :sport_id
      t.integer :gender_id
      t.string :style_category
      t.text :color_description
      t.integer :category_id
      t.text :style_features
      t.string :front
      t.string :back
      t.string :thumbnail

      t.timestamps
    end
  end
end
