class AddAndRemoveFiledsToGraphics < ActiveRecord::Migration[5.1]
  def change
    add_column    :graphics, :method_id, :integer
    add_column    :graphics, :custom_graphic, :string
    add_column    :graphics, :custom_fee, :string
    add_column    :graphics, :price_id, :integer
    remove_column :graphics, :description, :string
    remove_column :graphics, :price_to_factory, :string
    remove_column :graphics, :price_by_method, :string
    remove_column :graphics, :size_id, :string
  end
end
