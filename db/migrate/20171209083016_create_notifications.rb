class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.integer :receriver_id
      t.integer :sender_id
      t.string :notification_type
      t.text :message
      t.boolean :is_read
      t.boolean :is_sent

      t.timestamps
    end
  end
end
