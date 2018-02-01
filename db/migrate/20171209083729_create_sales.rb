class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.integer :customer_id
      t.integer :order_id
      t.boolean :is_completed
      t.integer :notification_id

      t.timestamps
    end
  end
end
