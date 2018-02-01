class CreateTextFonts < ActiveRecord::Migration[5.1]
  def change
    create_table :text_fonts do |t|
      t.integer :text_id
      t.integer :font_id

      t.timestamps
    end
  end
end
