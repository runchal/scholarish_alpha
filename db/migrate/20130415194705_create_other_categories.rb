class CreateOtherCategories < ActiveRecord::Migration
  def change
    create_table :other_categories do |t|
      t.string :type

      t.timestamps
    end
  end
end
