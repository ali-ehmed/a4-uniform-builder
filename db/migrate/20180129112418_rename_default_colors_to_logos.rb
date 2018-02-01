class RenameDefaultColorsToLogos < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :logos, :default_colors, :default_layers
  end

  def self.down
    rename_column :logos, :default_layers, :default_colors
  end
end
