class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :duration
      t.integer :artist_id
      # t.integer :genre_id
    end
  end
  # older version of AR --> #up, #down
end
