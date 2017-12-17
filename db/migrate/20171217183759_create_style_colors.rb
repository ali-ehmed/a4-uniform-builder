class CreateStyleColors < ActiveRecord::Migration[5.1]
  def change
    create_table :style_colors do |t|
      t.integer :style_id
      t.integer :color_id

      t.timestamps
    end
  end
end
