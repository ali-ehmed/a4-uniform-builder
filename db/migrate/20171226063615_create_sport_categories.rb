class CreateSportCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :sport_categories do |t|
      t.integer :sport_id
      t.integer :category_id

      t.timestamps
    end
  end
end
