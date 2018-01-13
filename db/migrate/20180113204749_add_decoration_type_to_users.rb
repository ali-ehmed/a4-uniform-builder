class AddDecorationTypeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :decoration_type, :string
  end
end
