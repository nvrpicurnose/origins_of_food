class AddSourceToFoods < ActiveRecord::Migration
  def up
  	add_column :foods, :source, :text
  end

  def down
  	remove_column :foods, :source
  end
end
