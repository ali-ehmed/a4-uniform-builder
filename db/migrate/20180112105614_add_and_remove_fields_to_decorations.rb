class AddAndRemoveFieldsToDecorations < ActiveRecord::Migration[5.1]
  def change
    add_column    :decorations,     :decoration_type,       :string
    add_column    :decorations,     :decoration_method,       :string
    add_column    :decorations,     :thumbnail,             :string
    add_column    :decorations,     :factory_graphic_code,  :string
    add_column    :decorations,     :factory_layout_code,   :string
    add_column    :decorations,     :custom_graphic,        :string
    add_column    :decorations,     :custom_font_size,      :string
    add_column    :decorations,     :custom_font,           :string
    add_column    :decorations,     :custom_style,          :string
    add_column    :decorations,     :style_method_id,             :integer
    add_column    :decorations,     :color_id,              :integer
    add_column    :decorations,     :price_id,              :integer
    remove_column :decorations,     :description,           :string
    remove_column :decorations,     :code,                  :string
  end
end
