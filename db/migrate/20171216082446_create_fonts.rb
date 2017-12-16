class CreateFonts < ActiveRecord::Migration[5.1]
  def change
    create_table :fonts do |t|
      t.string :code
      t.string :font_code
      t.string :font_file
      t.string :font
      t.integer :method_id
      t.integer :text_id

      t.timestamps
    end
  end
end
