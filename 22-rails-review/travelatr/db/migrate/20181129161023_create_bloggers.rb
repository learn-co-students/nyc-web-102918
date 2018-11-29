class CreateBloggers < ActiveRecord::Migration[5.2]
  def change
    create_table :bloggers do |t|
      t.string :name
      t.integer :age
      t.text :bio

      t.timestamps
    end
  end
end
