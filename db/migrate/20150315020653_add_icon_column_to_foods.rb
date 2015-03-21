class AddIconColumnToFoods < ActiveRecord::Migration
  def up
  	add_attachment :foods, :icon1
  end

  def down
  	remove_attachment :foods, :icon1
  end
end
