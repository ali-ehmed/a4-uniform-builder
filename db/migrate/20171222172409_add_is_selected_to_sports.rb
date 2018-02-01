class AddIsSelectedToSports < ActiveRecord::Migration[5.1]
  def change
    add_column :sports, :is_selected, :boolean
  end
end
