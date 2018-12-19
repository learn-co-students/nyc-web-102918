class AddImgToHoneyBadger < ActiveRecord::Migration[5.2]
  def change
    add_column :honey_badgers, :img, :string
  end
end
