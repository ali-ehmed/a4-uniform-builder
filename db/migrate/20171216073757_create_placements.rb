class CreatePlacements < ActiveRecord::Migration[5.1]
  def change
    create_table :placements do |t|
      t.string :code
      t.string :decoration_available_image
      t.string :decoration_available_string
      t.string :stellar_code
      t.string :standard_size
      t.string :measurement

      t.timestamps
    end
  end
end
