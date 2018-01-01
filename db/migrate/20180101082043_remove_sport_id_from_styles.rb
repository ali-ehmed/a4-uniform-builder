class RemoveSportIdFromStyles < ActiveRecord::Migration[5.1]
  def change
    remove_column :styles, :sport_id, :integer
  end
end
