class AddColorTilesToStyles < ActiveRecord::Migration[5.1]
  def change
    add_column :styles, :color_tiles, :string
  end
end
