class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :garment_category
      t.text :acs_garment_category_description
      t.string :acs_garment_category_code
      t.integer :gender_id

      t.timestamps
    end
  end
end
