class CreateOtherCategoryObjects < ActiveRecord::Migration
  def change
    create_table :other_category_objects do |t|
      t.text :title
      t.text :description
      t.text :date
      t.text :category
      t.text :link

      t.timestamps
    end
  end
end
