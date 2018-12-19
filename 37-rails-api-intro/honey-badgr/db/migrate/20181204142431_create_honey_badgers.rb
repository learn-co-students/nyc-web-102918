class CreateHoneyBadgers < ActiveRecord::Migration[5.2]
  def change
    create_table :honey_badgers do |t|
      t.string :name
      t.string :weight

      t.timestamps
    end
  end
end
