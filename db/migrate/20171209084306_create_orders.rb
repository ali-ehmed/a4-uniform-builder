class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :design_id
      t.string :order_type
      t.string :status

      t.timestamps
    end
  end
end
