class AddBackColumnsToFoods < ActiveRecord::Migration
  def up
  	add_attachment :foods, :back1
  end

  def down
  	remove_attachment :foods, :back1
  end
end
