class AddUserIdToOtherCategories < ActiveRecord::Migration
  def change
    add_column :other_categories, :user_id, :integer
  end
end
