class CreateStylePlacements < ActiveRecord::Migration[5.1]
  def change
    create_table :style_placements do |t|
      t.integer :style_id
      t.integer :placement_id

      t.timestamps
    end
  end
end
