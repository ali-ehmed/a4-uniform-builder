class CreateLogoColors < ActiveRecord::Migration[5.1]
  def change
    create_table :logo_colors do |t|
      t.integer :logo_id
      t.integer :color_id

      t.timestamps
    end
  end
end
