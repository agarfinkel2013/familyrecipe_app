class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.string :amount
      t.string :ingredname
      t.timestamps
    end
  end
end
