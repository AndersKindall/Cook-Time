class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :recipe_id, null: false
      t.integer :user_id, null: false
      t.integer :rating
      t.timestamps
    end
    add_index :ratings, :recipe_id
    add_index :ratings, :user_id
  end
end
