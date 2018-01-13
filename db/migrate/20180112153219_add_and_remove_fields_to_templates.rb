class AddAndRemoveFieldsToTemplates < ActiveRecord::Migration[5.1]
  def change
    add_column    :templates,     :style_method_id,                 :integer
    add_column    :templates,     :price_id,                        :integer
    add_column    :templates,     :sport_id,                        :integer
    remove_column :templates,     :price_to_factory,                :string
    remove_column :templates,     :price_by_method,                 :string
    remove_column :templates,     :sport_code,                      :string
    remove_column :templates,     :stellar_code,                    :string
    remove_column :templates,     :product_code,                    :string
    remove_column :templates,     :description,                     :text
    remove_column :templates,     :gender_id,                       :integer
    remove_column :templates,     :method_id,                       :integer
    remove_column :templates,     :size_id,                         :integer
  end
end
