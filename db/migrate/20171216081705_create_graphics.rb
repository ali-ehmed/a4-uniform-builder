class CreateGraphics < ActiveRecord::Migration[5.1]
  def change
    create_table :graphics do |t|
      t.string  :category
      t.string  :group
      t.string  :type
      t.integer :sport_id
      t.integer :gender_id
      t.string  :size_id
      t.string  :price_by_method
      t.string  :price_to_factory
      t.string  :factory_graphic_code
      t.string  :image
      t.integer :decoration_id
      t.integer :placement_id
      t.string  :layout_factory_code
      t.string  :description

      t.timestamps
    end
  end
end
