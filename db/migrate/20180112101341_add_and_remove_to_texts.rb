class AddAndRemoveToTexts < ActiveRecord::Migration[5.1]
  def change
    add_column    :texts,     :style_method_id, :integer
    add_column    :texts,     :price_id,        :integer
    remove_column :texts,     :category,        :string
    remove_column :texts,     :group,           :string
    remove_column :texts,     :text_type,       :string
    remove_column :texts,     :sport_id,        :integer
    remove_column :texts,     :gender_id,       :integer
    remove_column :texts,     :size_id,         :integer
    remove_column :texts,     :price_by_method, :string
    remove_column :texts,     :decsription,     :text
  end
end
