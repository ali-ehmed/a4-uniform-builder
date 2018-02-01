class AddIsFeaturedToSports < ActiveRecord::Migration[5.1]
  def change
    add_column :sports, :is_featured, :boolean, default: false
  end
end
