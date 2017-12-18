class CreateTextStyleMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :text_style_methods do |t|
      t.integer :text_id
      t.integer :style_method_id

      t.timestamps
    end
  end
end
