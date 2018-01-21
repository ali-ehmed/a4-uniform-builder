class AddFieldsToLogos < ActiveRecord::Migration[5.1]
  def change
    add_column :logos, :colour_1, :string
    add_column :logos, :colour_2, :string
    add_column :logos, :colour_3, :string
  end
end
