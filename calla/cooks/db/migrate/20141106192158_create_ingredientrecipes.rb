class CreateIngredientrecipes < ActiveRecord::Migration
  def change
    create_table :ingredientrecipes do |t|
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
