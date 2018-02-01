class CreateSports < ActiveRecord::Migration[5.1]
  def change
    create_table :sports do |t|
      t.string    :image
      t.string    :acs_sales_category_code
      t.text      :acs_sales_category_description
      t.string    :marketing_category

      t.timestamps
    end
  end
end
