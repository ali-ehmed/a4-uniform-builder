class AddDecorationColorToTexts < ActiveRecord::Migration[5.1]
  def change
    add_column :texts, :decoration_color, :string
  end
end
