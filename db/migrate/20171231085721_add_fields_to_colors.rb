class AddFieldsToColors < ActiveRecord::Migration[5.1]
  def change
    add_column :colors, :is_tile_one, :boolean
    add_column :colors, :is_tile_two, :boolean
    add_column :colors, :is_tile_three, :boolean
    add_column :colors, :hex_code, :string
    add_column :colors, :colour_descriptions, :text
    add_column :colors, :colour_code, :string
    add_column :colors, :heat_transfer, :boolean
    add_column :colors, :screen_print, :boolean
    add_column :colors, :tackle_twill, :boolean
  end
end
