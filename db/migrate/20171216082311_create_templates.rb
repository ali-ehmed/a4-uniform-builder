class CreateTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :templates do |t|
      t.string  :product_code
      t.string  :stellar_code
      t.string  :sport_code
      t.integer :method_id
      t.integer :gender_id
      t.string  :price_by_method
      t.string  :price_to_factory
      t.string  :factory_graphic_code
      t.string  :image
      t.integer :decoration_id
      t.integer :placement_id
      t.string  :layout_factory_code
      t.string  :svg
      t.string  :layouts
      t.text    :description
      t.integer :size_id

      t.timestamps
    end
  end
end
