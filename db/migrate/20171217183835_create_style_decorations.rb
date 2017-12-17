class CreateStyleDecorations < ActiveRecord::Migration[5.1]
  def change
    create_table :style_decorations do |t|
      t.integer :style_id
      t.integer :decoration_id

      t.timestamps
    end
  end
end
