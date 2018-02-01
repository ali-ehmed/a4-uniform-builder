class CreateStyleSports < ActiveRecord::Migration[5.1]
  def change
    create_table :style_sports do |t|
      t.integer :sport_id
      t.integer :style_id

      t.timestamps
    end
  end
end
