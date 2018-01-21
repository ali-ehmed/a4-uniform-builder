class CreateGraphicColors < ActiveRecord::Migration[5.1]
  def change
    create_table :graphic_colors do |t|
      t.integer :graphic_id
      t.integer :color_id

      t.timestamps
    end
  end
end
