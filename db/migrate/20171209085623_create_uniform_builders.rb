class CreateUniformBuilders < ActiveRecord::Migration[5.1]
  def change
    create_table :uniform_builders do |t|
      t.integer :style_id
      t.integer :sport_id
      t.string :category
      t.integer :gender_id
      t.string :type
      t.string :photo
      t.string :color_id
      t.integer :placement_id

      t.timestamps
    end
  end
end
