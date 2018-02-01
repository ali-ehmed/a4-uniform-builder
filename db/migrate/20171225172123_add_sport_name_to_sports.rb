class AddSportNameToSports < ActiveRecord::Migration[5.1]
  def change
    add_column :sports, :sport_name, :string
  end
end
