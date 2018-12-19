class CreateKids < ActiveRecord::Migration[5.2]
  def change
    create_table :kids do |t|
      t.string :name
      t.integer :age
      t.references :party, foreign_key: true
    end
  end
end
