class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthday
      t.text :bio

      t.timestamps
    end
  end
end
