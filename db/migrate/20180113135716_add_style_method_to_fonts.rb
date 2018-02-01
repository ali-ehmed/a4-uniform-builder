class AddStyleMethodToFonts < ActiveRecord::Migration[5.1]
  def change
    add_column :fonts, :style_method_id, :integer
  end
end
