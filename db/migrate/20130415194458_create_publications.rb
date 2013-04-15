class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.text :title
      t.text :publication_description
      t.string :date
      t.text :link

      t.timestamps
    end
  end
end
