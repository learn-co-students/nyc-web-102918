class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :creature
      t.integer :age
      t.boolean :cute

      t.timestamps
    end
  end
end
