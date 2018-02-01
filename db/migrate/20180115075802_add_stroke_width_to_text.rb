class AddStrokeWidthToText < ActiveRecord::Migration[5.1]
  def change
    add_column :texts, :stroke_text_width, :integer
  end
end
