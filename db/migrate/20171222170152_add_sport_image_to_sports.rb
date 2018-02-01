class AddSportImageToSports < ActiveRecord::Migration[5.1]
  def change
    add_column :sports, :sport_image, :string
  end
end
