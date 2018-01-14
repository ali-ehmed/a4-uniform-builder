class AddFieldsToText < ActiveRecord::Migration[5.1]
  def change
    add_column :texts, :size_id,        :integer
    add_column :texts, :font_id,        :integer
    add_column :texts, :style_id,       :integer
    add_column :texts, :team_name,      :string
    add_column :texts, :team_number,    :integer
    add_column :texts, :is_stroke,      :boolean
    add_column :texts, :stroke_width,   :string
    add_column :texts, :outilne_colour, :string
    add_column :texts, :font_style, :string
  end
end
