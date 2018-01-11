class CreateLayouts < ActiveRecord::Migration[5.1]
  def change
    create_table  :layouts do |t|
      t.integer   :graphic_id
      t.string    :layout1
      t.string    :layout2
      t.string    :layout3

      t.timestamps
    end
  end
end
