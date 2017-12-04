class CreateGenderOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :gender_options do |t|
      t.string    :name
      t.integer   :gender_id
      t.timestamps
    end
  end
end
