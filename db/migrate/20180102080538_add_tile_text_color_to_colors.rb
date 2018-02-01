class AddTileTextColorToColors < ActiveRecord::Migration[5.1]
  def change
    add_column :colors, :tile_text_color, :string, default: "#000000"
  end
end
