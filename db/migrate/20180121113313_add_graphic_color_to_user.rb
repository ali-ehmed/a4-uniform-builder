class AddGraphicColorToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :graphic_color, :string
  end
end
