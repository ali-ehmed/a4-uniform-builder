class CreateStyleSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :style_sizes do |t|
      t.integer :style_id
      t.integer :size_id

      t.timestamps
    end
  end
end
