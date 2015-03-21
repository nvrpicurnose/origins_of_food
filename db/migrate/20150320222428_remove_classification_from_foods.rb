class RemoveClassificationFromFoods < ActiveRecord::Migration
  def up
  	remove_column :foods, :classification
  end

  def down
  	add_column :foods, :classification
  end
end
