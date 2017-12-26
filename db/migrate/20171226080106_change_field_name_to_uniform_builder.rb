class ChangeFieldNameToUniformBuilder < ActiveRecord::Migration[5.1]
  def change
    rename_column :uniform_builders, :type, :uniform_type
  end
end
