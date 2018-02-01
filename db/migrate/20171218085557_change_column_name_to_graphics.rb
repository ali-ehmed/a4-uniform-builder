class ChangeColumnNameToGraphics < ActiveRecord::Migration[5.1]
  def change
    rename_column :graphics, :type, :graphic_type
  end
end
