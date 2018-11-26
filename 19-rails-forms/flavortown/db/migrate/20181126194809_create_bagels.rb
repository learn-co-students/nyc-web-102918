class CreateBagels < ActiveRecord::Migration[5.2]
  def change
    create_table :bagels do |t|
      t.string :name
      t.boolean :toasty

      t.timestamps
    end
  end
end
