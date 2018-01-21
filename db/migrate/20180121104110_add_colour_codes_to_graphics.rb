class AddColourCodesToGraphics < ActiveRecord::Migration[5.1]
  def change
    add_column :graphics, :colour_codes, :string
  end
end
