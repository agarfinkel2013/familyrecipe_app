class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :yield
      t.integer :preptime
      t.integer :cooktime
      t.integer :user_id
      t.string :instructions
      t.timestamps
    end
  end
end
