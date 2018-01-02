class ChangeDataTypeForColorDescription < ActiveRecord::Migration[5.1]
  def change
    rename_column :styles, :color_description, :colour_description
    change_column :styles, :colour_description, :string
  end
end
