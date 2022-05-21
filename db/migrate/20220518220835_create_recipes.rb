class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :dish_name, null: false
      t.string :cook_time, null: false
      t.text :description, null: false
      t.string :author, null: false
      t.string :yield, null: false
      t.timestamps
    end
    add_index :recipes, :dish_name, unique: true
  end
end
