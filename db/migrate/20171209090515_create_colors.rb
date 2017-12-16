class CreateColors < ActiveRecord::Migration[5.1]
  def change
    create_table :colors do |t|
      t.string :color_code
      t.string :color_type
      t.string :color_description
      t.string :md_no
      t.string :pms_no
      t.string :image
      t.integer :text_id

      t.timestamps
    end
  end
end
