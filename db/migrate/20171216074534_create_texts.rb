class CreateTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :texts do |t|
      t.string :category
      t.string :group
      t.string :text_type
      t.integer :sport_id
      t.integer :gender_id
      t.string :size_id
      t.string :price_by_method
      t.string :factory_graphic_code
      t.integer :decoration_id
      t.integer :placement_id
      t.string :layout_factory_code
      t.text :decsription

      t.timestamps
    end
  end
end
