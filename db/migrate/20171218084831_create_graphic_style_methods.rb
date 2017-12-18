class CreateGraphicStyleMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :graphic_style_methods do |t|
      t.integer :graphic_id
      t.integer :style_method_id

      t.timestamps
    end
  end
end
