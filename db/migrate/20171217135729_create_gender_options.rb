class CreateGenderOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :gender_options do |t|
      t.integer :gender_id
      t.string :name

      t.timestamps
    end
  end
end
