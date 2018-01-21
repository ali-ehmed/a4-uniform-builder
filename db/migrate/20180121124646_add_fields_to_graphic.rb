class AddFieldsToGraphic < ActiveRecord::Migration[5.1]
  def change
    add_column :graphics, :colour_1, :string
    add_column :graphics, :colour_2, :string
    add_column :graphics, :colour_3, :string
  end
end
