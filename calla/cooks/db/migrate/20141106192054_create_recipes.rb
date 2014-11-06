class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions
      t.string :prep
      t.string :cook

      t.timestamps
    end
  end
end
