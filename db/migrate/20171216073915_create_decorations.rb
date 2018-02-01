class CreateDecorations < ActiveRecord::Migration[5.1]
  def change
    create_table :decorations do |t|
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
