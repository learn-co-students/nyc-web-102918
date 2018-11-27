class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.integer :price
      t.string :name
      t.integer :party_id

      t.timestamps
    end
  end
end
