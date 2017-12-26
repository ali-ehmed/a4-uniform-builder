class AddNameToStyles < ActiveRecord::Migration[5.1]
  def change
    add_column :styles, :name, :string
  end
end
