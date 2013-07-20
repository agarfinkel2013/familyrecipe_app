class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :recipe_id
      t.integer :user_id
      t.string :notes
    end
  end
end
