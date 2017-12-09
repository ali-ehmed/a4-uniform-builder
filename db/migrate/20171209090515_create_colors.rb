class CreateColors < ActiveRecord::Migration[5.1]
  def change
    create_table :colors do |t|
      t.string :code
      t.string :color
      t.integer :design_id
      t.integer :style_id
      t.integer :sport_id

      t.timestamps
    end
  end
end
