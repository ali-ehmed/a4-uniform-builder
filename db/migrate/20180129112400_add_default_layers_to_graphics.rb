class AddDefaultLayersToGraphics < ActiveRecord::Migration[5.1]
  def change
    add_column :graphics, :default_layers, :string
  end
end
