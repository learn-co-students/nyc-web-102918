class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :like_count, default: 0
      t.string :content
      t.references :blogger, foreign_key: true

      t.timestamps
    end
  end
end
