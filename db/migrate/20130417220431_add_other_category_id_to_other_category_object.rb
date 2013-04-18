class AddOtherCategoryIdToOtherCategoryObject < ActiveRecord::Migration
  def change
    add_column :other_category_objects, :other_category_id, :integer
  end
end
