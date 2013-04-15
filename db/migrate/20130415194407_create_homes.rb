class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.text :home_text
      t.text :sales_box_01_head
      t.text :sales_box_01_text
      t.text :sales_box_02_head
      t.text :sales_box_02_text
      t.text :sales_box_03_head
      t.text :sales_box_03_text

      t.timestamps
    end
  end
end
