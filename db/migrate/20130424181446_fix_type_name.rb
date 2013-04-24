class FixTypeName < ActiveRecord::Migration
  def up
    rename_column :other_categories, :type, :other_category_type
  end

  def down
  end
end
