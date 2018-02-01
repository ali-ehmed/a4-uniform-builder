class CreateSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :sizes do |t|
      t.string :size
      t.boolean :availble
      t.string :size_country

      t.timestamps
    end
  end
end
