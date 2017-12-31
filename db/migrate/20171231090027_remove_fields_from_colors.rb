class RemoveFieldsFromColors < ActiveRecord::Migration[5.1]
  def change
    remove_column :colors, :color_type, :string
    remove_column :colors, :image, :string
  end
end
