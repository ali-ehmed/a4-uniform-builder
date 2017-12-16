class CreateStyleMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :style_methods do |t|
      t.string  :code
      t.string  :description
      t.integer :graphic_id
      t.integer :text_id
      t.timestamps
    end
  end
end
