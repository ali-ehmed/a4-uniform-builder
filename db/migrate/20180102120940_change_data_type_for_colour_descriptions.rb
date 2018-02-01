class ChangeDataTypeForColourDescriptions < ActiveRecord::Migration[5.1]
  def self.up
    change_table :colors do |t|
      t.change :colour_descriptions, :string
    end
  end
  def self.down
    change_table :colors do |t|
      t.change :colour_descriptions, :text
    end
  end
end
