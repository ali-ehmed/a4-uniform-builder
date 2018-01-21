class AddColourNameToColors < ActiveRecord::Migration[5.1]
  def change
    add_column :colors, :colour_name, :string
  end
end
