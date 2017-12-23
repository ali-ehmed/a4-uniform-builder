class AddFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sport, :integer
    add_column :users, :style, :integer
    add_column :users, :design, :integer
    add_column :users, :options, :integer
    add_column :users, :decoration, :integer
  end
end
