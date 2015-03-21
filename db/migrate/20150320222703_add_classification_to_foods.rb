class AddClassificationToFoods < ActiveRecord::Migration
  def up
  	add_attachment :foods, :classification
  end

  def down
  	remove_attachment :foods, :classification
  end
end
