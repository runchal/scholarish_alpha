class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.text :stubtitle
      t.text :description
      t.text :link

      t.timestamps
    end
  end
end
