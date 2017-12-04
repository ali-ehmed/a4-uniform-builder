class CreateSports < ActiveRecord::Migration[5.1]
  def change
    create_table :sports do |t|
      t.string    :category
      t.string    :image
      t.datetime  :available_till
      t.integer   :items_in_stock
      t.string    :acs_code

      t.timestamps
    end
  end
end
