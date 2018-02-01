class AddPlacementPosToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :placement_pos, :string
  end
end
