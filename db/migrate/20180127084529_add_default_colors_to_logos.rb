class AddDefaultColorsToLogos < ActiveRecord::Migration[5.1]
  def change
    add_column :logos, :default_colors, :string
  end
end
