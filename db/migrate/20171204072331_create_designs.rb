class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.text    :description
      t.string  :name
      t.string  :category
      t.string  :colour
      t.string  :image
      t.timestamps
    end
  end
end
