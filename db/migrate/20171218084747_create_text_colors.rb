class CreateTextColors < ActiveRecord::Migration[5.1]
  def change
    create_table :text_colors do |t|
      t.integer :text_id
      t.integer :color_id

      t.timestamps
    end
  end
end
