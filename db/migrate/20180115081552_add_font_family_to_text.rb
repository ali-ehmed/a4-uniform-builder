class AddFontFamilyToText < ActiveRecord::Migration[5.1]
  def change
    add_column :texts, :font_family, :string
  end
end
