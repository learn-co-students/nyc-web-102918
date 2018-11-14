class CreateRecipeCards < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_cards do |t|
      t.integer :user_id
      t.integer :recipe_id # foreign keys
      # t.references :recipe
      t.string :date
      t.integer :rating
    end
  end
end
